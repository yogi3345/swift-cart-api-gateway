# Start with a base image containing Java 17 runtime
FROM openjdk:17-jdk-slim

# Information about the maintainer
LABEL "org.opencontainers.image.authors"="swiftcart.com"

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file for the API gateway from the target directory into the image
COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your API gateway runs on (8072)
EXPOSE 8072

# Execute the API gateway application
ENTRYPOINT ["java", "-jar", "app.jar"]
