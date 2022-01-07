
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_GENERIC_SCHED_CLOCK ;
 int IS_ENABLED (int ) ;
 int nmi_count ;
 scalar_t__ nmi_cpu ;
 int nmi_total_ts ;
 scalar_t__ nmi_ts_start ;
 scalar_t__ smp_processor_id () ;
 scalar_t__ time_get () ;

void trace_hwlat_callback(bool enter)
{
 if (smp_processor_id() != nmi_cpu)
  return;





 if (!IS_ENABLED(CONFIG_GENERIC_SCHED_CLOCK)) {
  if (enter)
   nmi_ts_start = time_get();
  else
   nmi_total_ts += time_get() - nmi_ts_start;
 }

 if (enter)
  nmi_count++;
}
