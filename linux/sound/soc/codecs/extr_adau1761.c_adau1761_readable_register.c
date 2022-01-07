
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int adau17x1_readable_register (struct device*,unsigned int) ;

__attribute__((used)) static bool adau1761_readable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 148:
 case 132:
 case 131:
 case 130:
 case 129:
 case 146:
 case 128:
 case 141:
 case 139:
 case 138:
 case 136:
 case 135:
 case 140:
 case 137:
 case 145:
 case 144:
 case 143:
 case 142:
 case 134:
 case 133:
 case 147:
 case 149:
 case 151:
 case 150:
  return 1;
 default:
  break;
 }

 return adau17x1_readable_register(dev, reg);
}
