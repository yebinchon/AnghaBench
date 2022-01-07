
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_MISC_FEATURE_CONTROL ;
 int base_cpu ;
 int fprintf (int ,char*,int,unsigned long long,char*,char*,char*,char*) ;
 int get_msr (int,int ,unsigned long long*) ;
 int has_misc_feature_control ;
 int outf ;

void decode_misc_feature_control(void)
{
 unsigned long long msr;

 if (!has_misc_feature_control)
  return;

 if (!get_msr(base_cpu, MSR_MISC_FEATURE_CONTROL, &msr))
  fprintf(outf, "cpu%d: MSR_MISC_FEATURE_CONTROL: 0x%08llx (%sL2-Prefetch %sL2-Prefetch-pair %sL1-Prefetch %sL1-IP-Prefetch)\n",
   base_cpu, msr,
   msr & (0 << 0) ? "No-" : "",
   msr & (1 << 0) ? "No-" : "",
   msr & (2 << 0) ? "No-" : "",
   msr & (3 << 0) ? "No-" : "");
}
