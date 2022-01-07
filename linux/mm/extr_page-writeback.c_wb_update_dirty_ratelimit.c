
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct dirty_throttle_control {unsigned long dirty; unsigned long pos_ratio; unsigned long wb_dirty; int wb_thresh; int wb_bg_thresh; int thresh; int bg_thresh; struct bdi_writeback* wb; } ;
struct bdi_writeback {unsigned long avg_write_bandwidth; unsigned long dirty_ratelimit; unsigned long dirtied_stamp; unsigned long balanced_dirty_ratelimit; TYPE_1__* bdi; } ;
struct TYPE_2__ {int capabilities; } ;


 int BDI_CAP_STRICTLIMIT ;
 unsigned long BITS_PER_LONG ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 unsigned long HZ ;
 unsigned long RATELIMIT_CALC_SHIFT ;
 unsigned long dirty_freerun_ceiling (int ,int ) ;
 unsigned long div_u64 (unsigned long,unsigned long) ;
 int dtc_dom (struct dirty_throttle_control*) ;
 unsigned long hard_dirty_limit (int ,int ) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long max3 (unsigned long,unsigned long,unsigned long) ;
 unsigned long min3 (unsigned long,unsigned long,unsigned long) ;
 int trace_bdi_dirty_ratelimit (struct bdi_writeback*,unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void wb_update_dirty_ratelimit(struct dirty_throttle_control *dtc,
          unsigned long dirtied,
          unsigned long elapsed)
{
 struct bdi_writeback *wb = dtc->wb;
 unsigned long dirty = dtc->dirty;
 unsigned long freerun = dirty_freerun_ceiling(dtc->thresh, dtc->bg_thresh);
 unsigned long limit = hard_dirty_limit(dtc_dom(dtc), dtc->thresh);
 unsigned long setpoint = (freerun + limit) / 2;
 unsigned long write_bw = wb->avg_write_bandwidth;
 unsigned long dirty_ratelimit = wb->dirty_ratelimit;
 unsigned long dirty_rate;
 unsigned long task_ratelimit;
 unsigned long balanced_dirty_ratelimit;
 unsigned long step;
 unsigned long x;
 unsigned long shift;





 dirty_rate = (dirtied - wb->dirtied_stamp) * HZ / elapsed;




 task_ratelimit = (u64)dirty_ratelimit *
     dtc->pos_ratio >> RATELIMIT_CALC_SHIFT;
 task_ratelimit++;
 balanced_dirty_ratelimit = div_u64((u64)task_ratelimit * write_bw,
        dirty_rate | 1);



 if (unlikely(balanced_dirty_ratelimit > write_bw))
  balanced_dirty_ratelimit = write_bw;
 step = 0;
 if (unlikely(wb->bdi->capabilities & BDI_CAP_STRICTLIMIT)) {
  dirty = dtc->wb_dirty;
  if (dtc->wb_dirty < 8)
   setpoint = dtc->wb_dirty + 1;
  else
   setpoint = (dtc->wb_thresh + dtc->wb_bg_thresh) / 2;
 }

 if (dirty < setpoint) {
  x = min3(wb->balanced_dirty_ratelimit,
    balanced_dirty_ratelimit, task_ratelimit);
  if (dirty_ratelimit < x)
   step = x - dirty_ratelimit;
 } else {
  x = max3(wb->balanced_dirty_ratelimit,
    balanced_dirty_ratelimit, task_ratelimit);
  if (dirty_ratelimit > x)
   step = dirty_ratelimit - x;
 }






 shift = dirty_ratelimit / (2 * step + 1);
 if (shift < BITS_PER_LONG)
  step = DIV_ROUND_UP(step >> shift, 8);
 else
  step = 0;

 if (dirty_ratelimit < balanced_dirty_ratelimit)
  dirty_ratelimit += step;
 else
  dirty_ratelimit -= step;

 wb->dirty_ratelimit = max(dirty_ratelimit, 1UL);
 wb->balanced_dirty_ratelimit = balanced_dirty_ratelimit;

 trace_bdi_dirty_ratelimit(wb, dirty_rate, task_ratelimit);
}
