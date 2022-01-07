
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int window_start; unsigned int window_len; unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;







 TYPE_1__* wm2200_ranges ;

__attribute__((used)) static bool wm2200_volatile_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(wm2200_ranges); i++)
  if ((reg >= wm2200_ranges[i].window_start &&
       reg <= wm2200_ranges[i].window_start +
       wm2200_ranges[i].window_len) ||
      (reg >= wm2200_ranges[i].range_min &&
       reg <= wm2200_ranges[i].range_max))
   return 1;

 switch (reg) {
 case 128:
 case 132:
 case 134:
 case 133:
 case 130:
 case 129:
 case 131:
  return 1;
 default:
  return 0;
 }
}
