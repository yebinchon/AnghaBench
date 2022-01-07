
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_request {int dummy; } ;
struct msr_hwp_cap {int dummy; } ;


 int MSR_HWP_CAPABILITIES ;
 int MSR_HWP_REQUEST ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int get_msr (int,int ,unsigned long long*) ;
 scalar_t__ has_epb ;
 int has_hwp ;
 int print_hwp_cap (int,struct msr_hwp_cap*,char*) ;
 int print_hwp_request (int,struct msr_hwp_request*,char*) ;
 int printf (char*,int,unsigned int) ;
 int read_hwp_cap (int,struct msr_hwp_cap*,int ) ;
 int read_hwp_request (int,struct msr_hwp_request*,int ) ;

int print_cpu_msrs(int cpu)
{
 unsigned long long msr;
 struct msr_hwp_request req;
 struct msr_hwp_cap cap;

 if (has_epb) {
  get_msr(cpu, MSR_IA32_ENERGY_PERF_BIAS, &msr);

  printf("cpu%d: EPB %u\n", cpu, (unsigned int) msr);
 }

 if (!has_hwp)
  return 0;

 read_hwp_request(cpu, &req, MSR_HWP_REQUEST);
 print_hwp_request(cpu, &req, "");

 read_hwp_cap(cpu, &cap, MSR_HWP_CAPABILITIES);
 print_hwp_cap(cpu, &cap, "");

 return 0;
}
