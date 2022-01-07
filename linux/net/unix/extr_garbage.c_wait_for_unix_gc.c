
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNIX_INFLIGHT_TRIGGER_GC ;
 int gc_in_progress ;
 int unix_gc () ;
 int unix_gc_wait ;
 scalar_t__ unix_tot_inflight ;
 int wait_event (int ,int) ;

void wait_for_unix_gc(void)
{



 if (unix_tot_inflight > UNIX_INFLIGHT_TRIGGER_GC && !gc_in_progress)
  unix_gc();
 wait_event(unix_gc_wait, gc_in_progress == 0);
}
