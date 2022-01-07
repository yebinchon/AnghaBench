
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int atomic_dec (int *) ;
 int cpumask_set_cpu (int ,int *) ;
 int dead_event ;
 int dead_events_mask ;
 int perf_event_disable (struct perf_event*) ;
 int smp_processor_id () ;
 struct perf_event* this_cpu_read (int ) ;
 int this_cpu_write (int ,struct perf_event*) ;
 int watchdog_cpus ;
 int watchdog_ev ;

void hardlockup_detector_perf_disable(void)
{
 struct perf_event *event = this_cpu_read(watchdog_ev);

 if (event) {
  perf_event_disable(event);
  this_cpu_write(watchdog_ev, ((void*)0));
  this_cpu_write(dead_event, event);
  cpumask_set_cpu(smp_processor_id(), &dead_events_mask);
  atomic_dec(&watchdog_cpus);
 }
}
