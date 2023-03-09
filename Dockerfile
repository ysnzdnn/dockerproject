FROM python:slim-buster
WORKDIR /name_of_env
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]