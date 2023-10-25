# 1. Base image
FROM python:3.10

# 2. Copy files
COPY . /app

# 3. Install our deps
RUN pip install -r /app/requirements.txt

RUN make /app

# EXPOSE 5000

CMD python3 /app/app.py
