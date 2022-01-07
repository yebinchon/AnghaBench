
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_POWER_CTL ;
 int MSR_PLATFORM_INFO ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,int,unsigned long long,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_nhm_platform_info(void)
{
 unsigned long long msr;
 unsigned int ratio;

 get_msr(base_cpu, MSR_PLATFORM_INFO, &msr);

 fprintf(outf, "cpu%d: MSR_PLATFORM_INFO: 0x%08llx\n", base_cpu, msr);

 ratio = (msr >> 40) & 0xFF;
 fprintf(outf, "%d * %.1f = %.1f MHz max efficiency frequency\n",
  ratio, bclk, ratio * bclk);

 ratio = (msr >> 8) & 0xFF;
 fprintf(outf, "%d * %.1f = %.1f MHz base frequency\n",
  ratio, bclk, ratio * bclk);

 get_msr(base_cpu, MSR_IA32_POWER_CTL, &msr);
 fprintf(outf, "cpu%d: MSR_IA32_POWER_CTL: 0x%08llx (C1E auto-promotion: %sabled)\n",
  base_cpu, msr, msr & 0x2 ? "EN" : "DIS");

 return;
}
