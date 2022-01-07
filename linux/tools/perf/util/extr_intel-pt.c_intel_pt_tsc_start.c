
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_pt {int tc; } ;


 scalar_t__ perf_time_to_tsc (scalar_t__,int *) ;
 scalar_t__ tsc_to_perf_time (scalar_t__,int *) ;

__attribute__((used)) static u64 intel_pt_tsc_start(u64 ns, struct intel_pt *pt)
{
 u64 tsc, tm;

 tsc = perf_time_to_tsc(ns, &pt->tc);

 while (1) {
  tm = tsc_to_perf_time(tsc, &pt->tc);
  if (tm < ns)
   break;
  tsc -= 1;
 }

 while (tm < ns)
  tm = tsc_to_perf_time(++tsc, &pt->tc);

 return tsc;
}
