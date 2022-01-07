
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_WRONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int sprintf (char*,char*,int) ;
 int write (int,char*,int) ;

int filename__write_int(const char *filename, int value)
{
 int fd = open(filename, O_WRONLY), err = -1;
 char buf[64];

 if (fd < 0)
  return err;

 sprintf(buf, "%d", value);
 if (write(fd, buf, sizeof(buf)) == sizeof(buf))
  err = 0;

 close(fd);
 return err;
}
