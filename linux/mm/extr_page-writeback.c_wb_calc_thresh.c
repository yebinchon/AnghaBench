
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirty_throttle_control {unsigned long thresh; int member_0; } ;
struct bdi_writeback {int dummy; } ;


 int GDTC_INIT (struct bdi_writeback*) ;
 unsigned long __wb_calc_thresh (struct dirty_throttle_control*) ;

unsigned long wb_calc_thresh(struct bdi_writeback *wb, unsigned long thresh)
{
 struct dirty_throttle_control gdtc = { GDTC_INIT(wb),
            .thresh = thresh };
 return __wb_calc_thresh(&gdtc);
}
