
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt5616_ranges ;

__attribute__((used)) static bool rt5616_volatile_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt5616_ranges); i++) {
  if (reg >= rt5616_ranges[i].range_min &&
      reg <= rt5616_ranges[i].range_max)
   return 1;
 }

 switch (reg) {
 case 129:
 case 130:
 case 135:
 case 136:
 case 133:
 case 134:
 case 132:
 case 131:
 case 128:
 case 137:
  return 1;
 default:
  return 0;
 }
}
