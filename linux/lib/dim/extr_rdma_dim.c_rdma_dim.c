
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct dim_stats {int dummy; } ;
struct dim_sample {scalar_t__ comp_ctr; scalar_t__ event_ctr; } ;
struct dim {int state; struct dim_sample start_sample; int work; struct dim_sample measuring_sample; } ;




 scalar_t__ DIM_NEVENTS ;

 int dim_calc_stats (struct dim_sample*,struct dim_sample*,struct dim_stats*) ;
 int dim_update_sample_with_comps (scalar_t__,int ,int ,scalar_t__,struct dim_sample*) ;
 int rdma_dim_decision (struct dim_stats*,struct dim*) ;
 int schedule_work (int *) ;

void rdma_dim(struct dim *dim, u64 completions)
{
 struct dim_sample *curr_sample = &dim->measuring_sample;
 struct dim_stats curr_stats;
 u32 nevents;

 dim_update_sample_with_comps(curr_sample->event_ctr + 1, 0, 0,
         curr_sample->comp_ctr + completions,
         &dim->measuring_sample);

 switch (dim->state) {
 case 129:
  nevents = curr_sample->event_ctr - dim->start_sample.event_ctr;
  if (nevents < DIM_NEVENTS)
   break;
  dim_calc_stats(&dim->start_sample, curr_sample, &curr_stats);
  if (rdma_dim_decision(&curr_stats, dim)) {
   dim->state = 130;
   schedule_work(&dim->work);
   break;
  }

 case 128:
  dim->state = 129;
  dim_update_sample_with_comps(curr_sample->event_ctr, 0, 0,
          curr_sample->comp_ctr,
          &dim->start_sample);
  break;
 case 130:
  break;
 }
}
