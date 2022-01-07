
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int O_APPEND ;
 int O_WRONLY ;
 int close (int) ;
 int open (char const*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static ssize_t write_text(const char *path, char *buf, ssize_t len)
{
 int fd;

 fd = open(path, O_WRONLY | O_APPEND);
 if (fd < 0)
  return fd;

 len = write(fd, buf, len);
 if (len < 0) {
  close(fd);
  return len;
 }

 close(fd);

 return len;
}
