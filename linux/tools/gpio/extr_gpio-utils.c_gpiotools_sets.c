
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_data {int dummy; } ;


 int COMSUMER ;
 int GPIOHANDLE_REQUEST_OUTPUT ;
 int gpiotools_release_linehandle (int) ;
 int gpiotools_request_linehandle (char const*,unsigned int*,unsigned int,int ,struct gpiohandle_data*,int ) ;

int gpiotools_sets(const char *device_name, unsigned int *lines,
     unsigned int nlines, struct gpiohandle_data *data)
{
 int ret;

 ret = gpiotools_request_linehandle(device_name, lines, nlines,
        GPIOHANDLE_REQUEST_OUTPUT, data,
        COMSUMER);
 if (ret < 0)
  return ret;

 return gpiotools_release_linehandle(ret);
}
