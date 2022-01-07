
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSW_EXT_CSTATE_COUNT ;
 int TSC ;
 int base_cpu ;
 int cpu_count ;
 unsigned long long** current_count ;
 int hsw_ext_get_count (int,unsigned long long*,int) ;
 int* is_valid ;
 unsigned long long tsc_at_measure_end ;

__attribute__((used)) static int hsw_ext_stop(void)
{
 unsigned long long val;
 int num, cpu;

 hsw_ext_get_count(TSC, &tsc_at_measure_end, base_cpu);

 for (num = 0; num < HSW_EXT_CSTATE_COUNT; num++) {
  for (cpu = 0; cpu < cpu_count; cpu++) {
   is_valid[cpu] = !hsw_ext_get_count(num, &val, cpu);
   current_count[num][cpu] = val;
  }
 }
 return 0;
}
