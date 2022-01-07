
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {scalar_t__ profile_ix; int tune_state; } ;


 int DIM_GOING_LEFT ;
 int DIM_GOING_RIGHT ;
 int net_dim_step (struct dim*) ;

__attribute__((used)) static void net_dim_exit_parking(struct dim *dim)
{
 dim->tune_state = dim->profile_ix ? DIM_GOING_LEFT : DIM_GOING_RIGHT;
 net_dim_step(dim);
}
