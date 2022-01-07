
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {int tune_state; scalar_t__ steps_left; scalar_t__ steps_right; } ;


 int DIM_PARKING_TIRED ;

void dim_park_tired(struct dim *dim)
{
 dim->steps_right = 0;
 dim->steps_left = 0;
 dim->tune_state = DIM_PARKING_TIRED;
}
