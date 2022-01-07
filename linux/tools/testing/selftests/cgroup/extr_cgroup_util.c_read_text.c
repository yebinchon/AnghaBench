
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int read (int,char*,size_t) ;

__attribute__((used)) static ssize_t read_text(const char *path, char *buf, size_t max_len)
{
 ssize_t len;
 int fd;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return fd;

 len = read(fd, buf, max_len - 1);
 if (len < 0)
  goto out;

 buf[len] = 0;
out:
 close(fd);
 return len;
}
