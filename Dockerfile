FROM python:3.9-slim

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Install required Python packages
COPY req.txt /app/
WORKDIR /app
RUN pip install -r req.txt

# Copy your application code
COPY . /app/

# Set the command to run your app
CMD ["python", "main.py"]
