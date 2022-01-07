
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt5677_ranges ;

__attribute__((used)) static bool rt5677_volatile_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt5677_ranges); i++) {
  if (reg >= rt5677_ranges[i].range_min &&
   reg <= rt5677_ranges[i].range_max) {
   return 1;
  }
 }

 switch (reg) {
 case 133:
 case 132:
 case 137:
 case 136:
 case 139:
 case 138:
 case 144:
 case 143:
 case 142:
 case 145:
 case 134:
 case 135:
 case 154:
 case 153:
 case 131:
 case 155:
 case 147:
 case 141:
 case 140:
 case 146:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
