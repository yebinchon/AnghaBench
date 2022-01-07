
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_data {int dummy; } ;


 int COMSUMER ;
 int GPIOHANDLE_REQUEST_INPUT ;
 int gpiotools_get_values (int,struct gpiohandle_data*) ;
 int gpiotools_release_linehandle (int) ;
 int gpiotools_request_linehandle (char const*,unsigned int*,unsigned int,int ,struct gpiohandle_data*,int ) ;

int gpiotools_gets(const char *device_name, unsigned int *lines,
     unsigned int nlines, struct gpiohandle_data *data)
{
 int fd;
 int ret;
 int ret_close;

 ret = gpiotools_request_linehandle(device_name, lines, nlines,
        GPIOHANDLE_REQUEST_INPUT, data,
        COMSUMER);
 if (ret < 0)
  return ret;

 fd = ret;
 ret = gpiotools_get_values(fd, data);
 ret_close = gpiotools_release_linehandle(fd);
 return ret < 0 ? ret : ret_close;
}
