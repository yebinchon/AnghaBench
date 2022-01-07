
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uleds_dev ;
struct uleds_user_dev {int max_brightness; int name; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int brightness ;


 int CLOCK_MONOTONIC ;
 int LED_MAX_NAME_SIZE ;
 int O_RDWR ;
 int clock_gettime (int ,struct timespec*) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,int ,int ,int) ;
 int read (int,int*,int) ;
 int stderr ;
 int strncpy (int ,char const*,int ) ;
 int write (int,struct uleds_user_dev*,int) ;

int main(int argc, char const *argv[])
{
 struct uleds_user_dev uleds_dev;
 int fd, ret;
 int brightness;
 struct timespec ts;

 if (argc != 2) {
  fprintf(stderr, "Requires <device-name> argument\n");
  return 1;
 }

 strncpy(uleds_dev.name, argv[1], LED_MAX_NAME_SIZE);
 uleds_dev.max_brightness = 100;

 fd = open("/dev/uleds", O_RDWR);
 if (fd == -1) {
  perror("Failed to open /dev/uleds");
  return 1;
 }

 ret = write(fd, &uleds_dev, sizeof(uleds_dev));
 if (ret == -1) {
  perror("Failed to write to /dev/uleds");
  close(fd);
  return 1;
 }

 while (1) {
  ret = read(fd, &brightness, sizeof(brightness));
  if (ret == -1) {
   perror("Failed to read from /dev/uleds");
   close(fd);
   return 1;
  }
  clock_gettime(CLOCK_MONOTONIC, &ts);
  printf("[%ld.%09ld] %u\n", ts.tv_sec, ts.tv_nsec, brightness);
 }

 close(fd);

 return 0;
}
