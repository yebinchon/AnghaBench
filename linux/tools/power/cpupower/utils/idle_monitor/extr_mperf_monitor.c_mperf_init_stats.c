
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_APERF ;
 int MSR_MPERF ;
 unsigned long long* aperf_previous_count ;
 int* is_valid ;
 unsigned long long* mperf_previous_count ;
 int read_msr (unsigned int,int ,unsigned long long*) ;

__attribute__((used)) static int mperf_init_stats(unsigned int cpu)
{
 unsigned long long val;
 int ret;

 ret = read_msr(cpu, MSR_APERF, &val);
 aperf_previous_count[cpu] = val;
 ret |= read_msr(cpu, MSR_MPERF, &val);
 mperf_previous_count[cpu] = val;
 is_valid[cpu] = !ret;

 return 0;
}
