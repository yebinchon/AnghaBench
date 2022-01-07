
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_period; } ;
struct perf_event {int dummy; } ;


 scalar_t__ IS_ERR (struct perf_event*) ;
 int PTR_ERR (struct perf_event*) ;
 int hw_nmi_get_sample_period (int ) ;
 struct perf_event* perf_event_create_kernel_counter (struct perf_event_attr*,unsigned int,int *,int ,int *) ;
 int pr_debug (char*,unsigned int,int) ;
 unsigned int smp_processor_id () ;
 int this_cpu_write (int ,struct perf_event*) ;
 int watchdog_ev ;
 int watchdog_overflow_callback ;
 int watchdog_thresh ;
 struct perf_event_attr wd_hw_attr ;

__attribute__((used)) static int hardlockup_detector_event_create(void)
{
 unsigned int cpu = smp_processor_id();
 struct perf_event_attr *wd_attr;
 struct perf_event *evt;

 wd_attr = &wd_hw_attr;
 wd_attr->sample_period = hw_nmi_get_sample_period(watchdog_thresh);


 evt = perf_event_create_kernel_counter(wd_attr, cpu, ((void*)0),
            watchdog_overflow_callback, ((void*)0));
 if (IS_ERR(evt)) {
  pr_debug("Perf event create on CPU %d failed with %ld\n", cpu,
    PTR_ERR(evt));
  return PTR_ERR(evt);
 }
 this_cpu_write(watchdog_ev, evt);
 return 0;
}
