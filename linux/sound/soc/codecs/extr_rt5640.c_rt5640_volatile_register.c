
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int window_start; unsigned int window_len; unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt5640_ranges ;

__attribute__((used)) static bool rt5640_volatile_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt5640_ranges); i++)
  if ((reg >= rt5640_ranges[i].window_start &&
       reg <= rt5640_ranges[i].window_start +
       rt5640_ranges[i].window_len) ||
      (reg >= rt5640_ranges[i].range_min &&
       reg <= rt5640_ranges[i].range_max))
   return 1;

 switch (reg) {
 case 131:
 case 142:
 case 138:
 case 141:
 case 143:
 case 136:
 case 137:
 case 140:
 case 139:
 case 132:
 case 133:
 case 135:
 case 134:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
