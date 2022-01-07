
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_fetch_inc (int *) ;
 scalar_t__ hardlockup_detector_event_create () ;
 int perf_event_enable (int ) ;
 int pr_info (char*) ;
 int this_cpu_read (int ) ;
 int watchdog_cpus ;
 int watchdog_ev ;

void hardlockup_detector_perf_enable(void)
{
 if (hardlockup_detector_event_create())
  return;


 if (!atomic_fetch_inc(&watchdog_cpus))
  pr_info("Enabled. Permanently consumes one hw-PMU counter.\n");

 perf_event_enable(this_cpu_read(watchdog_ev));
}
