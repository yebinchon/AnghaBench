
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int exit (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static void write_int(char *path, int i)
{
 char buf[1024];
 int fd = open(path, O_RDWR);

 if (fd < 0) {
  perror("open");
  exit(1);
 }

 sprintf(buf, "%d", i);

 if (write(fd, buf, strlen(buf)) != strlen(buf)) {
  perror("write");
  exit(1);
 }

 close(fd);
}
