
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool wm9090_readable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 138:
 case 142:
 case 141:
 case 140:
 case 160:
 case 153:
 case 150:
 case 152:
 case 151:
 case 149:
 case 148:
 case 147:
 case 139:
 case 135:
 case 134:
 case 161:
 case 136:
 case 146:
 case 145:
 case 144:
 case 143:
 case 137:
 case 163:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 162:
 case 159:
 case 158:
 case 157:
 case 156:
 case 155:
 case 154:
 case 164:
 case 167:
 case 166:
 case 165:
  return 1;

 default:
  return 0;
 }
}
