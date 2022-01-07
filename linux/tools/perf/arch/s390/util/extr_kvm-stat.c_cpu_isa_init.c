
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {char* exit_reasons_isa; int exit_reasons; } ;


 int ENOTSUP ;
 int sie_exit_reasons ;
 scalar_t__ strstr (char const*,char*) ;

int cpu_isa_init(struct perf_kvm_stat *kvm, const char *cpuid)
{
 if (strstr(cpuid, "IBM")) {
  kvm->exit_reasons = sie_exit_reasons;
  kvm->exit_reasons_isa = "SIE";
 } else
  return -ENOTSUP;

 return 0;
}
