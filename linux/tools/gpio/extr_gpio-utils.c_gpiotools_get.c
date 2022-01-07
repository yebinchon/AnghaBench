
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_data {int* values; } ;


 int gpiotools_gets (char const*,unsigned int*,int,struct gpiohandle_data*) ;

int gpiotools_get(const char *device_name, unsigned int line)
{
 struct gpiohandle_data data;
 unsigned int lines[] = {line};

 gpiotools_gets(device_name, lines, 1, &data);
 return data.values[0];
}
