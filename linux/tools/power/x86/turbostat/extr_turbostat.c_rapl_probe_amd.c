
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIC_CorWatt ;
 int BIC_Cor_J ;
 int BIC_PRESENT (int ) ;
 int BIC_PkgWatt ;
 int BIC_Pkg_J ;
 int MSR_RAPL_PWR_UNIT ;
 int RAPL_AMD_F17H ;
 int RAPL_PER_CORE_ENERGY ;
 int __cpuid (int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int base_cpu ;
 int do_rapl ;
 int fprintf (int ,char*,double,double) ;
 scalar_t__ get_msr (int ,int ,unsigned long long*) ;
 double get_tdp_amd (unsigned int) ;
 void* ldexp (double,unsigned long long) ;
 int max_extended_level ;
 int outf ;
 int quiet ;
 int rapl_energy_units ;
 double rapl_joule_counter_range ;
 int rapl_joules ;
 void* rapl_power_units ;
 void* rapl_time_units ;

void rapl_probe_amd(unsigned int family, unsigned int model)
{
 unsigned long long msr;
 unsigned int eax, ebx, ecx, edx;
 unsigned int has_rapl = 0;
 double tdp;

 if (max_extended_level >= 0x80000007) {
  __cpuid(0x80000007, eax, ebx, ecx, edx);

  has_rapl = edx & (1 << 14);
 }

 if (!has_rapl)
  return;

 switch (family) {
 case 0x17:
 case 0x18:
  do_rapl = RAPL_AMD_F17H | RAPL_PER_CORE_ENERGY;
  if (rapl_joules) {
   BIC_PRESENT(BIC_Pkg_J);
   BIC_PRESENT(BIC_Cor_J);
  } else {
   BIC_PRESENT(BIC_PkgWatt);
   BIC_PRESENT(BIC_CorWatt);
  }
  break;
 default:
  return;
 }

 if (get_msr(base_cpu, MSR_RAPL_PWR_UNIT, &msr))
  return;

 rapl_time_units = ldexp(1.0, -(msr >> 16 & 0xf));
 rapl_energy_units = ldexp(1.0, -(msr >> 8 & 0x1f));
 rapl_power_units = ldexp(1.0, -(msr & 0xf));

 tdp = get_tdp_amd(family);

 rapl_joule_counter_range = 0xFFFFFFFF * rapl_energy_units / tdp;
 if (!quiet)
  fprintf(outf, "RAPL: %.0f sec. Joule Counter Range, at %.0f Watts\n", rapl_joule_counter_range, tdp);
}
