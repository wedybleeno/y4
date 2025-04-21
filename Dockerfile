FROM python:3.9

# Установка FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

WORKDIR /app

# Копирование файлов приложения
COPY . .

# Установка зависимостей
RUN pip install -r requirements.txt

# Создание временной директории для cookies
RUN mkdir -p /tmp
RUN touch /tmp/cookies.txt

# Запуск бота
CMD ["python", "bot.py"]
