
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*) ;
 int probe_sched_switch ;
 int probe_sched_wakeup ;
 int register_trace_sched_switch (int ,int *) ;
 int register_trace_sched_wakeup (int ,int *) ;
 int register_trace_sched_wakeup_new (int ,int *) ;
 int unregister_trace_sched_wakeup (int ,int *) ;
 int unregister_trace_sched_wakeup_new (int ,int *) ;

__attribute__((used)) static int tracing_sched_register(void)
{
 int ret;

 ret = register_trace_sched_wakeup(probe_sched_wakeup, ((void*)0));
 if (ret) {
  pr_info("wakeup trace: Couldn't activate tracepoint"
   " probe to kernel_sched_wakeup\n");
  return ret;
 }

 ret = register_trace_sched_wakeup_new(probe_sched_wakeup, ((void*)0));
 if (ret) {
  pr_info("wakeup trace: Couldn't activate tracepoint"
   " probe to kernel_sched_wakeup_new\n");
  goto fail_deprobe;
 }

 ret = register_trace_sched_switch(probe_sched_switch, ((void*)0));
 if (ret) {
  pr_info("sched trace: Couldn't activate tracepoint"
   " probe to kernel_sched_switch\n");
  goto fail_deprobe_wake_new;
 }

 return ret;
fail_deprobe_wake_new:
 unregister_trace_sched_wakeup_new(probe_sched_wakeup, ((void*)0));
fail_deprobe:
 unregister_trace_sched_wakeup(probe_sched_wakeup, ((void*)0));
 return ret;
}
