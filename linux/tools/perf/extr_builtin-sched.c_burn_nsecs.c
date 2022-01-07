
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_sched {scalar_t__ run_measurement_overhead; } ;


 scalar_t__ get_nsecs () ;

__attribute__((used)) static void burn_nsecs(struct perf_sched *sched, u64 nsecs)
{
 u64 T0 = get_nsecs(), T1;

 do {
  T1 = get_nsecs();
 } while (T1 + sched->run_measurement_overhead < T0 + nsecs);
}
