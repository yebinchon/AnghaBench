
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct dirty_throttle_control {unsigned long avail; unsigned long thresh; unsigned long bg_thresh; } ;
struct TYPE_2__ {int dirty_limit; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int PAGE_SIZE ;
 int PF_LESS_THROTTLE ;
 struct task_struct* current ;
 unsigned long dirty_background_bytes ;
 int dirty_background_ratio ;
 TYPE_1__ global_wb_domain ;
 struct dirty_throttle_control* mdtc_gdtc (struct dirty_throttle_control*) ;
 unsigned long min (unsigned long,int) ;
 scalar_t__ rt_task (struct task_struct*) ;
 int trace_global_dirty_state (unsigned long,unsigned long) ;
 unsigned long vm_dirty_bytes ;
 int vm_dirty_ratio ;

__attribute__((used)) static void domain_dirty_limits(struct dirty_throttle_control *dtc)
{
 const unsigned long available_memory = dtc->avail;
 struct dirty_throttle_control *gdtc = mdtc_gdtc(dtc);
 unsigned long bytes = vm_dirty_bytes;
 unsigned long bg_bytes = dirty_background_bytes;

 unsigned long ratio = (vm_dirty_ratio * PAGE_SIZE) / 100;
 unsigned long bg_ratio = (dirty_background_ratio * PAGE_SIZE) / 100;
 unsigned long thresh;
 unsigned long bg_thresh;
 struct task_struct *tsk;


 if (gdtc) {
  unsigned long global_avail = gdtc->avail;
  if (bytes)
   ratio = min(DIV_ROUND_UP(bytes, global_avail),
        PAGE_SIZE);
  if (bg_bytes)
   bg_ratio = min(DIV_ROUND_UP(bg_bytes, global_avail),
           PAGE_SIZE);
  bytes = bg_bytes = 0;
 }

 if (bytes)
  thresh = DIV_ROUND_UP(bytes, PAGE_SIZE);
 else
  thresh = (ratio * available_memory) / PAGE_SIZE;

 if (bg_bytes)
  bg_thresh = DIV_ROUND_UP(bg_bytes, PAGE_SIZE);
 else
  bg_thresh = (bg_ratio * available_memory) / PAGE_SIZE;

 if (bg_thresh >= thresh)
  bg_thresh = thresh / 2;
 tsk = current;
 if (tsk->flags & PF_LESS_THROTTLE || rt_task(tsk)) {
  bg_thresh += bg_thresh / 4 + global_wb_domain.dirty_limit / 32;
  thresh += thresh / 4 + global_wb_domain.dirty_limit / 32;
 }
 dtc->thresh = thresh;
 dtc->bg_thresh = bg_thresh;


 if (!gdtc)
  trace_global_dirty_state(bg_thresh, thresh);
}
