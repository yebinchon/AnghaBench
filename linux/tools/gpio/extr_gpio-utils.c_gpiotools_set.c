
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiohandle_data {unsigned int* values; } ;


 int gpiotools_sets (char const*,unsigned int*,int,struct gpiohandle_data*) ;

int gpiotools_set(const char *device_name, unsigned int line,
    unsigned int value)
{
 struct gpiohandle_data data;
 unsigned int lines[] = {line};

 data.values[0] = value;
 return gpiotools_sets(device_name, lines, 1, &data);
}
