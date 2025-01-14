
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ msr ;


 int MSR_CONFIG_TDP_CONTROL ;
 int MSR_CONFIG_TDP_LEVEL_1 ;
 int MSR_CONFIG_TDP_LEVEL_2 ;
 int MSR_CONFIG_TDP_NOMINAL ;
 int MSR_TURBO_ACTIVATION_RATIO ;
 int base_cpu ;
 int fprintf (int ,char*,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_config_tdp(void)
{
 unsigned long long msr;

 get_msr(base_cpu, MSR_CONFIG_TDP_NOMINAL, &msr);
 fprintf(outf, "cpu%d: MSR_CONFIG_TDP_NOMINAL: 0x%08llx", base_cpu, msr);
 fprintf(outf, " (base_ratio=%d)\n", (unsigned int)msr & 0xFF);

 get_msr(base_cpu, MSR_CONFIG_TDP_LEVEL_1, &msr);
 fprintf(outf, "cpu%d: MSR_CONFIG_TDP_LEVEL_1: 0x%08llx (", base_cpu, msr);
 if (msr) {
  fprintf(outf, "PKG_MIN_PWR_LVL1=%d ", (unsigned int)(msr >> 48) & 0x7FFF);
  fprintf(outf, "PKG_MAX_PWR_LVL1=%d ", (unsigned int)(msr >> 32) & 0x7FFF);
  fprintf(outf, "LVL1_RATIO=%d ", (unsigned int)(msr >> 16) & 0xFF);
  fprintf(outf, "PKG_TDP_LVL1=%d", (unsigned int)(msr) & 0x7FFF);
 }
 fprintf(outf, ")\n");

 get_msr(base_cpu, MSR_CONFIG_TDP_LEVEL_2, &msr);
 fprintf(outf, "cpu%d: MSR_CONFIG_TDP_LEVEL_2: 0x%08llx (", base_cpu, msr);
 if (msr) {
  fprintf(outf, "PKG_MIN_PWR_LVL2=%d ", (unsigned int)(msr >> 48) & 0x7FFF);
  fprintf(outf, "PKG_MAX_PWR_LVL2=%d ", (unsigned int)(msr >> 32) & 0x7FFF);
  fprintf(outf, "LVL2_RATIO=%d ", (unsigned int)(msr >> 16) & 0xFF);
  fprintf(outf, "PKG_TDP_LVL2=%d", (unsigned int)(msr) & 0x7FFF);
 }
 fprintf(outf, ")\n");

 get_msr(base_cpu, MSR_CONFIG_TDP_CONTROL, &msr);
 fprintf(outf, "cpu%d: MSR_CONFIG_TDP_CONTROL: 0x%08llx (", base_cpu, msr);
 if ((msr) & 0x3)
  fprintf(outf, "TDP_LEVEL=%d ", (unsigned int)(msr) & 0x3);
 fprintf(outf, " lock=%d", (unsigned int)(msr >> 31) & 1);
 fprintf(outf, ")\n");

 get_msr(base_cpu, MSR_TURBO_ACTIVATION_RATIO, &msr);
 fprintf(outf, "cpu%d: MSR_TURBO_ACTIVATION_RATIO: 0x%08llx (", base_cpu, msr);
 fprintf(outf, "MAX_NON_TURBO_RATIO=%d", (unsigned int)(msr) & 0xFF);
 fprintf(outf, " lock=%d", (unsigned int)(msr >> 31) & 1);
 fprintf(outf, ")\n");
}
