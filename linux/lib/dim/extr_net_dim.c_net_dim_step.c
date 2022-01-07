
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {int tired; int tune_state; int profile_ix; int steps_left; int steps_right; } ;




 int DIM_ON_EDGE ;


 int DIM_STEPPED ;
 int DIM_TOO_TIRED ;
 int NET_DIM_PARAMS_NUM_PROFILES ;

__attribute__((used)) static int net_dim_step(struct dim *dim)
{
 if (dim->tired == (NET_DIM_PARAMS_NUM_PROFILES * 2))
  return DIM_TOO_TIRED;

 switch (dim->tune_state) {
 case 129:
 case 128:
  break;
 case 130:
  if (dim->profile_ix == (NET_DIM_PARAMS_NUM_PROFILES - 1))
   return DIM_ON_EDGE;
  dim->profile_ix++;
  dim->steps_right++;
  break;
 case 131:
  if (dim->profile_ix == 0)
   return DIM_ON_EDGE;
  dim->profile_ix--;
  dim->steps_left++;
  break;
 }

 dim->tired++;
 return DIM_STEPPED;
}
