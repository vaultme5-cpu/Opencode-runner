FROM node:20-slim
RUN apt-get update && apt-get install -y git bash curl && rm -rf /var/lib/apt/lists/*
RUN npm install -g @google/opencode
WORKDIR /workspace
EXPOSE 8080
CMD ["opencode", "server", "--port", "8080", "--host", "0.0.0.0"]

