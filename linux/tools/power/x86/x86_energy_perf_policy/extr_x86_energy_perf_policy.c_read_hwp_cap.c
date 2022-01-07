
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_cap {void* lowest; void* efficient; void* guaranteed; void* highest; } ;


 int HWP_GUARANTEED_PERF (unsigned long long) ;
 int HWP_HIGHEST_PERF (unsigned long long) ;
 int HWP_LOWEST_PERF (unsigned long long) ;
 int HWP_MOSTEFFICIENT_PERF (unsigned long long) ;
 int get_msr (int,unsigned int,unsigned long long*) ;
 void* msr_perf_2_ratio (int ) ;

void read_hwp_cap(int cpu, struct msr_hwp_cap *cap, unsigned int msr_offset)
{
 unsigned long long msr;

 get_msr(cpu, msr_offset, &msr);

 cap->highest = msr_perf_2_ratio(HWP_HIGHEST_PERF(msr));
 cap->guaranteed = msr_perf_2_ratio(HWP_GUARANTEED_PERF(msr));
 cap->efficient = msr_perf_2_ratio(HWP_MOSTEFFICIENT_PERF(msr));
 cap->lowest = msr_perf_2_ratio(HWP_LOWEST_PERF(msr));
}
