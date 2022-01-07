
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_nhm_id { ____Placeholder_intel_nhm_id } intel_nhm_id ;




 int MSR_CORE_C3_RESIDENCY ;
 int MSR_CORE_C6_RESIDENCY ;
 int MSR_PKG_C3_RESIDENCY ;
 int MSR_PKG_C6_RESIDENCY ;
 int MSR_TSC ;



 scalar_t__ read_msr (unsigned int,int,unsigned long long*) ;

__attribute__((used)) static int nhm_get_count(enum intel_nhm_id id, unsigned long long *val,
   unsigned int cpu)
{
 int msr;

 switch (id) {
 case 132:
  msr = MSR_CORE_C3_RESIDENCY;
  break;
 case 131:
  msr = MSR_CORE_C6_RESIDENCY;
  break;
 case 130:
  msr = MSR_PKG_C3_RESIDENCY;
  break;
 case 129:
  msr = MSR_PKG_C6_RESIDENCY;
  break;
 case 128:
  msr = MSR_TSC;
  break;
 default:
  return -1;
 };
 if (read_msr(cpu, msr, val))
  return -1;

 return 0;
}
