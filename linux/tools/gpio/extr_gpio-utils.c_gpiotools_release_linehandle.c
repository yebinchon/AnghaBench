
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int const) ;
 int errno ;
 int perror (char*) ;

int gpiotools_release_linehandle(const int fd)
{
 int ret;

 ret = close(fd);
 if (ret == -1) {
  perror("Failed to close GPIO LINEHANDLE device file");
  ret = -errno;
 }

 return ret;
}
