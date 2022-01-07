
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt1305_ranges ;

__attribute__((used)) static bool rt1305_volatile_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt1305_ranges); i++) {
  if (reg >= rt1305_ranges[i].range_min &&
   reg <= rt1305_ranges[i].range_max) {
   return 1;
  }
 }

 switch (reg) {
 case 139:
 case 137:
 case 136:
 case 135:
 case 140:
 case 158:
 case 160:
 case 159:
 case 141:
 case 133:
 case 132:
 case 134:
 case 138:
 case 128:
 case 129:
 case 144:
 case 143:
 case 142:
 case 146:
 case 145:
 case 157:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 156:
 case 155:
 case 131:
 case 130:
  return 1;

 default:
  return 0;
 }
}
