
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int adau17x1_readable_register (struct device*,unsigned int) ;

__attribute__((used)) static bool adau1781_readable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 136:
 case 134:
 case 130:
 case 133:
 case 129:
 case 132:
 case 135:
 case 131:
 case 128:
 case 140:
 case 139:
 case 138:
 case 137:
  return 1;
 default:
  break;
 }

 return adau17x1_readable_register(dev, reg);
}
