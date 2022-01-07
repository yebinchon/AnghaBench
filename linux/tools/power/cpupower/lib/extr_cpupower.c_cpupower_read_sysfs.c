
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int read (int,char*,size_t) ;

unsigned int cpupower_read_sysfs(const char *path, char *buf, size_t buflen)
{
 int fd;
 ssize_t numread;

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return 0;

 numread = read(fd, buf, buflen - 1);
 if (numread < 1) {
  close(fd);
  return 0;
 }

 buf[numread] = '\0';
 close(fd);

 return (unsigned int) numread;
}
