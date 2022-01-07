
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_PM_ENABLE ;
 int get_msr (int,int ,unsigned long long*) ;
 int printf (char*,int,unsigned int,int) ;
 int put_msr (int,int ,int) ;
 scalar_t__ verbose ;

int enable_hwp_on_cpu(int cpu)
{
 unsigned long long msr;

 get_msr(cpu, MSR_PM_ENABLE, &msr);
 put_msr(cpu, MSR_PM_ENABLE, 1);

 if (verbose)
  printf("cpu%d: MSR_PM_ENABLE old: %d new: %d\n", cpu, (unsigned int) msr, 1);

 return 0;
}
