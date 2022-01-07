
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bm_avg ;
 scalar_t__ bm_cnt ;
 int * bm_event_thread ;
 scalar_t__ bm_first ;
 scalar_t__ bm_last ;
 scalar_t__ bm_max ;
 scalar_t__ bm_min ;
 scalar_t__ bm_std ;
 scalar_t__ bm_stddev ;
 int bm_str ;
 scalar_t__ bm_total ;
 scalar_t__ bm_totalsq ;
 int kthread_stop (int *) ;
 int strcpy (int ,char*) ;

void trace_benchmark_unreg(void)
{
 if (!bm_event_thread)
  return;

 kthread_stop(bm_event_thread);
 bm_event_thread = ((void*)0);

 strcpy(bm_str, "START");
 bm_total = 0;
 bm_totalsq = 0;
 bm_last = 0;
 bm_max = 0;
 bm_min = 0;
 bm_cnt = 0;

 bm_first = 0;
 bm_std = 0;
 bm_avg = 0;
 bm_stddev = 0;
}
