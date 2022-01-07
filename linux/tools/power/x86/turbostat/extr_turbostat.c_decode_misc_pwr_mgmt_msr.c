
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_MISC_PWR_MGMT ;
 int base_cpu ;
 int do_nhm_platform_info ;
 int fprintf (int ,char*,int,unsigned long long,char*,char*,char*) ;
 int get_msr (int,int ,unsigned long long*) ;
 scalar_t__ no_MSR_MISC_PWR_MGMT ;
 int outf ;

void decode_misc_pwr_mgmt_msr(void)
{
 unsigned long long msr;

 if (!do_nhm_platform_info)
  return;

 if (no_MSR_MISC_PWR_MGMT)
  return;

 if (!get_msr(base_cpu, MSR_MISC_PWR_MGMT, &msr))
  fprintf(outf, "cpu%d: MSR_MISC_PWR_MGMT: 0x%08llx (%sable-EIST_Coordination %sable-EPB %sable-OOB)\n",
   base_cpu, msr,
   msr & (1 << 0) ? "DIS" : "EN",
   msr & (1 << 1) ? "EN" : "DIS",
   msr & (1 << 8) ? "EN" : "DIS");
}
