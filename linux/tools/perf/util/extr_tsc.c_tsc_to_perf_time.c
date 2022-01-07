
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_tsc_conversion {int time_shift; int time_zero; int time_mult; } ;



u64 tsc_to_perf_time(u64 cyc, struct perf_tsc_conversion *tc)
{
 u64 quot, rem;

 quot = cyc >> tc->time_shift;
 rem = cyc & (((u64)1 << tc->time_shift) - 1);
 return tc->time_zero + quot * tc->time_mult +
        ((rem * tc->time_mult) >> tc->time_shift);
}
