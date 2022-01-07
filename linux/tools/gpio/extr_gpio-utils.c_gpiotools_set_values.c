
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_data {int dummy; } ;


 int GPIOHANDLE_SET_LINE_VALUES_IOCTL ;
 int errno ;
 int fprintf (int ,char*,char*,int,char*) ;
 int ioctl (int const,int ,struct gpiohandle_data*) ;
 int stderr ;
 char* strerror (int) ;

int gpiotools_set_values(const int fd, struct gpiohandle_data *data)
{
 int ret;

 ret = ioctl(fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, data);
 if (ret == -1) {
  ret = -errno;
  fprintf(stderr, "Failed to issue %s (%d), %s\n",
   "GPIOHANDLE_SET_LINE_VALUES_IOCTL", ret,
   strerror(errno));
 }

 return ret;
}
