
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim_stats {int dummy; } ;
struct dim {int tune_state; int profile_ix; struct dim_stats prev_stats; int tired; } ;







 int DIM_STATS_BETTER ;
 int DIM_STATS_SAME ;

 int dim_on_top (struct dim*) ;
 int dim_park_on_top (struct dim*) ;
 int dim_park_tired (struct dim*) ;
 int dim_turn (struct dim*) ;
 int net_dim_exit_parking (struct dim*) ;
 int net_dim_stats_compare (struct dim_stats*,struct dim_stats*) ;
 int net_dim_step (struct dim*) ;

__attribute__((used)) static bool net_dim_decision(struct dim_stats *curr_stats, struct dim *dim)
{
 int prev_state = dim->tune_state;
 int prev_ix = dim->profile_ix;
 int stats_res;
 int step_res;

 switch (dim->tune_state) {
 case 130:
  stats_res = net_dim_stats_compare(curr_stats,
        &dim->prev_stats);
  if (stats_res != DIM_STATS_SAME)
   net_dim_exit_parking(dim);
  break;

 case 129:
  dim->tired--;
  if (!dim->tired)
   net_dim_exit_parking(dim);
  break;

 case 132:
 case 133:
  stats_res = net_dim_stats_compare(curr_stats,
        &dim->prev_stats);
  if (stats_res != DIM_STATS_BETTER)
   dim_turn(dim);

  if (dim_on_top(dim)) {
   dim_park_on_top(dim);
   break;
  }

  step_res = net_dim_step(dim);
  switch (step_res) {
  case 131:
   dim_park_on_top(dim);
   break;
  case 128:
   dim_park_tired(dim);
   break;
  }

  break;
 }

 if (prev_state != 130 ||
     dim->tune_state != 130)
  dim->prev_stats = *curr_stats;

 return dim->profile_ix != prev_ix;
}
