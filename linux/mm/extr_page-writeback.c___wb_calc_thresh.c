
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
struct wb_domain {int completions; } ;
struct dirty_throttle_control {unsigned long thresh; int wb; int wb_completions; } ;


 int bdi_min_ratio ;
 int do_div (long,long) ;
 struct wb_domain* dtc_dom (struct dirty_throttle_control*) ;
 int fprop_fraction_percpu (int *,int ,long*,long*) ;
 int wb_min_max_ratio (int ,unsigned long*,unsigned long*) ;

__attribute__((used)) static unsigned long __wb_calc_thresh(struct dirty_throttle_control *dtc)
{
 struct wb_domain *dom = dtc_dom(dtc);
 unsigned long thresh = dtc->thresh;
 u64 wb_thresh;
 long numerator, denominator;
 unsigned long wb_min_ratio, wb_max_ratio;




 fprop_fraction_percpu(&dom->completions, dtc->wb_completions,
         &numerator, &denominator);

 wb_thresh = (thresh * (100 - bdi_min_ratio)) / 100;
 wb_thresh *= numerator;
 do_div(wb_thresh, denominator);

 wb_min_max_ratio(dtc->wb, &wb_min_ratio, &wb_max_ratio);

 wb_thresh += (thresh * wb_min_ratio) / 100;
 if (wb_thresh > (thresh * wb_max_ratio) / 100)
  wb_thresh = thresh * wb_max_ratio / 100;

 return wb_thresh;
}
