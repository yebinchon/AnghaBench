
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {char* exit_reasons_isa; int exit_reasons; } ;


 int ENOTSUP ;
 scalar_t__ strstr (char const*,char*) ;
 int svm_exit_reasons ;
 int vmx_exit_reasons ;

int cpu_isa_init(struct perf_kvm_stat *kvm, const char *cpuid)
{
 if (strstr(cpuid, "Intel")) {
  kvm->exit_reasons = vmx_exit_reasons;
  kvm->exit_reasons_isa = "VMX";
 } else if (strstr(cpuid, "AMD") || strstr(cpuid, "Hygon")) {
  kvm->exit_reasons = svm_exit_reasons;
  kvm->exit_reasons_isa = "SVM";
 } else
  return -ENOTSUP;

 return 0;
}
