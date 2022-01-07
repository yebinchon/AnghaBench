
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



bool adau17x1_precious_register(struct device *dev, unsigned int reg)
{

 if (reg < 0x400)
  return 1;

 return 0;
}
