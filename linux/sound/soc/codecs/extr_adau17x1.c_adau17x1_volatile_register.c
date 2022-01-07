
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




bool adau17x1_volatile_register(struct device *dev, unsigned int reg)
{

 if (reg < 0x4000)
  return 1;

 switch (reg) {

 case 128:
 case 128 + 1:
 case 128 + 2:
 case 128 + 3:
 case 128 + 4:
 case 128 + 5:
  return 1;
 default:
  break;
 }

 return 0;
}
