
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {int tune_state; int steps_left; int steps_right; } ;






bool dim_on_top(struct dim *dim)
{
 switch (dim->tune_state) {
 case 129:
 case 128:
  return 1;
 case 130:
  return (dim->steps_left > 1) && (dim->steps_right == 1);
 default:
  return (dim->steps_right > 1) && (dim->steps_left == 1);
 }
}
