
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long FEATURE_CONTROL_LOCKED ;
 int MSR_IA32_FEATURE_CONTROL ;
 int base_cpu ;
 int fprintf (int ,char*,int,unsigned long long,char*,char*) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

void decode_feature_control_msr(void)
{
 unsigned long long msr;

 if (!get_msr(base_cpu, MSR_IA32_FEATURE_CONTROL, &msr))
  fprintf(outf, "cpu%d: MSR_IA32_FEATURE_CONTROL: 0x%08llx (%sLocked %s)\n",
   base_cpu, msr,
   msr & FEATURE_CONTROL_LOCKED ? "" : "UN-",
   msr & (1 << 18) ? "SGX" : "");
}
