
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dirty_throttle_control {int wb_thresh; int bg_thresh; unsigned long wb_dirty; scalar_t__ thresh; int wb_bg_thresh; struct bdi_writeback* wb; } ;
struct bdi_writeback {int dummy; } ;


 int WB_RECLAIMABLE ;
 int WB_WRITEBACK ;
 int __wb_calc_thresh (struct dirty_throttle_control*) ;
 int div_u64 (int,scalar_t__) ;
 unsigned long wb_stat (struct bdi_writeback*,int ) ;
 int wb_stat_error () ;
 unsigned long wb_stat_sum (struct bdi_writeback*,int ) ;

__attribute__((used)) static inline void wb_dirty_limits(struct dirty_throttle_control *dtc)
{
 struct bdi_writeback *wb = dtc->wb;
 unsigned long wb_reclaimable;
 dtc->wb_thresh = __wb_calc_thresh(dtc);
 dtc->wb_bg_thresh = dtc->thresh ?
  div_u64((u64)dtc->wb_thresh * dtc->bg_thresh, dtc->thresh) : 0;
 if (dtc->wb_thresh < 2 * wb_stat_error()) {
  wb_reclaimable = wb_stat_sum(wb, WB_RECLAIMABLE);
  dtc->wb_dirty = wb_reclaimable + wb_stat_sum(wb, WB_WRITEBACK);
 } else {
  wb_reclaimable = wb_stat(wb, WB_RECLAIMABLE);
  dtc->wb_dirty = wb_reclaimable + wb_stat(wb, WB_WRITEBACK);
 }
}
