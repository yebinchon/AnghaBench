
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool cs42l51_writeable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 129:
 case 134:
 case 139:
 case 135:
 case 154:
 case 153:
 case 140:
 case 141:
 case 151:
 case 150:
 case 158:
 case 156:
 case 157:
 case 155:
 case 132:
 case 131:
 case 144:
 case 143:
 case 145:
 case 128:
 case 147:
 case 146:
 case 130:
 case 136:
 case 137:
 case 138:
 case 152:
 case 149:
 case 148:
 case 133:
 case 142:
  return 1;
 default:
  return 0;
 }
}
