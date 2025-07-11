# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN yarn install

# Copy the rest of the application
COPY . .

# Expose port and run the app
EXPOSE 80
CMD ["npm", "start"]
