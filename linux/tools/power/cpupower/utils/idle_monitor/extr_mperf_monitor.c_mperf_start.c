
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int clock_gettime (int ,int *) ;
 int cpu_count ;
 int dprint (char*,unsigned long long) ;
 int mperf_get_tsc (unsigned long long*) ;
 int mperf_init_stats (int) ;
 int time_start ;
 unsigned long long tsc_at_measure_start ;

__attribute__((used)) static int mperf_start(void)
{
 int cpu;
 unsigned long long dbg;

 clock_gettime(CLOCK_REALTIME, &time_start);
 mperf_get_tsc(&tsc_at_measure_start);

 for (cpu = 0; cpu < cpu_count; cpu++)
  mperf_init_stats(cpu);

 mperf_get_tsc(&dbg);
 dprint("TSC diff: %llu\n", dbg - tsc_at_measure_start);
 return 0;
}
