
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirty_throttle_control {unsigned long bg_thresh; unsigned long thresh; int avail; int member_0; } ;


 int GDTC_INIT_NO_WB ;
 int domain_dirty_limits (struct dirty_throttle_control*) ;
 int global_dirtyable_memory () ;

void global_dirty_limits(unsigned long *pbackground, unsigned long *pdirty)
{
 struct dirty_throttle_control gdtc = { GDTC_INIT_NO_WB };

 gdtc.avail = global_dirtyable_memory();
 domain_dirty_limits(&gdtc);

 *pbackground = gdtc.bg_thresh;
 *pdirty = gdtc.thresh;
}
