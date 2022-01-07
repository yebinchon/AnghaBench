
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_CC6_DEMOTION_POLICY_CONFIG ;
 int MSR_MC6_DEMOTION_POLICY_CONFIG ;
 int base_cpu ;
 int fprintf (int ,char*,int,unsigned long long,char*) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

void decode_c6_demotion_policy_msr(void)
{
 unsigned long long msr;

 if (!get_msr(base_cpu, MSR_CC6_DEMOTION_POLICY_CONFIG, &msr))
  fprintf(outf, "cpu%d: MSR_CC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-CC6-Demotion)\n",
   base_cpu, msr, msr & (1 << 0) ? "EN" : "DIS");

 if (!get_msr(base_cpu, MSR_MC6_DEMOTION_POLICY_CONFIG, &msr))
  fprintf(outf, "cpu%d: MSR_MC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-MC6-Demotion)\n",
   base_cpu, msr, msr & (1 << 0) ? "EN" : "DIS");
}
