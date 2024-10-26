# Use a lightweight base image with Python support
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the extracted braintumor directory into the container
COPY . /app

# Install any required Python dependencies (if applicable)
# RUN pip install -r requirements.txt

# Start the container by listing files in testing and training folders
CMD ["python", "-c", "import os; print('Training:', os.listdir('Training')); print('Testing:', os.listdir('Testing'))"]

# Run the model training script when the container launches
CMD ["python", "app.py"]
