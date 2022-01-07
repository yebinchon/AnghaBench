
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_PKG_POWER_INFO ;
 int RAPL_PKG_POWER_INFO ;
 unsigned long long RAPL_POWER_GRANULARITY ;
 int base_cpu ;
 int do_rapl ;
 int get_msr (int ,int ,unsigned long long*) ;
 unsigned long long rapl_power_units ;

double get_tdp_intel(unsigned int model)
{
 unsigned long long msr;

 if (do_rapl & RAPL_PKG_POWER_INFO)
  if (!get_msr(base_cpu, MSR_PKG_POWER_INFO, &msr))
   return ((msr >> 0) & RAPL_POWER_GRANULARITY) * rapl_power_units;

 switch (model) {
 case 129:
 case 128:
  return 30.0;
 default:
  return 135.0;
 }
}
