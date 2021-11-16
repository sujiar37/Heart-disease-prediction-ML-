FROM python:3.7.11-slim-stretch
RUN apt-get update && apt-get install -y build-essential
RUN pip3 install --upgrade pip                                        
COPY requirements.txt .
RUN pip3 install -r requirements.txt
WORKDIR /app
COPY . .
EXPOSE 8501
CMD ["streamlit","run","app.py"]