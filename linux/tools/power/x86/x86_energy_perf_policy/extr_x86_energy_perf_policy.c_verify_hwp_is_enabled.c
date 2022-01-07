
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_PM_ENABLE ;
 int base_cpu ;
 int fprintf (int ,char*) ;
 int get_msr (int ,int ,unsigned long long*) ;
 scalar_t__ has_hwp ;
 int stderr ;

void verify_hwp_is_enabled(void)
{
 unsigned long long msr;

 if (!has_hwp)
  return;


 get_msr(base_cpu, MSR_PM_ENABLE, &msr);
 if ((msr & 1) == 0) {
  fprintf(stderr, "HWP can be enabled using '--hwp-enable'\n");
  has_hwp = 0;
  return;
 }
}
