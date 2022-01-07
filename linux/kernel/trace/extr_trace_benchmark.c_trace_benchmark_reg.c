
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int benchmark_event_kthread ;
 int bm_event_thread ;
 int kthread_run (int ,int *,char*) ;
 int ok_to_run ;
 int pr_warning (char*) ;

int trace_benchmark_reg(void)
{
 if (!ok_to_run) {
  pr_warning("trace benchmark cannot be started via kernel command line\n");
  return -EBUSY;
 }

 bm_event_thread = kthread_run(benchmark_event_kthread,
          ((void*)0), "event_benchmark");
 if (IS_ERR(bm_event_thread)) {
  pr_warning("trace benchmark failed to create kernel thread\n");
  return PTR_ERR(bm_event_thread);
 }

 return 0;
}
