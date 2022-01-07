
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_tsc_conversion {int time_zero; int time_mult; int time_shift; } ;



u64 perf_time_to_tsc(u64 ns, struct perf_tsc_conversion *tc)
{
 u64 t, quot, rem;

 t = ns - tc->time_zero;
 quot = t / tc->time_mult;
 rem = t % tc->time_mult;
 return (quot << tc->time_shift) +
        (rem << tc->time_shift) / tc->time_mult;
}
