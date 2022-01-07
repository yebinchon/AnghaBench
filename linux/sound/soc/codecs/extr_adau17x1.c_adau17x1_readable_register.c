
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
bool adau17x1_readable_register(struct device *dev, unsigned int reg)
{

 if (reg < 0x400)
  return 1;

 switch (reg) {
 case 150:
 case 136:
 case 135:
 case 138:
 case 131:
 case 130:
 case 147:
 case 146:
 case 139:
 case 134:
 case 151:
 case 137:
 case 145:
 case 144:
 case 143:
 case 129:
 case 149:
 case 148:
 case 140:
 case 133:
 case 132:
 case 142:
 case 141:
 case 128:
  return 1;
 default:
  break;
 }
 return 0;
}
