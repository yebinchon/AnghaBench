
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_TSC ;
 int base_cpu ;
 int dprint (char*,unsigned long long) ;
 int read_msr (int ,int ,unsigned long long*) ;

__attribute__((used)) static int mperf_get_tsc(unsigned long long *tsc)
{
 int ret;

 ret = read_msr(base_cpu, MSR_TSC, tsc);
 if (ret)
  dprint("Reading TSC MSR failed, returning %llu\n", *tsc);
 return ret;
}
