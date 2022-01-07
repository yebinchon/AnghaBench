
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {int tune_state; int steps_right; int steps_left; } ;







void dim_turn(struct dim *dim)
{
 switch (dim->tune_state) {
 case 129:
 case 128:
  break;
 case 130:
  dim->tune_state = 131;
  dim->steps_left = 0;
  break;
 case 131:
  dim->tune_state = 130;
  dim->steps_right = 0;
  break;
 }
}
