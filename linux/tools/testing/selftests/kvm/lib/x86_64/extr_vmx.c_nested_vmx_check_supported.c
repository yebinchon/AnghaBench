
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpuid_entry2 {int ecx; } ;


 int CPUID_VMX ;
 int KSFT_SKIP ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 struct kvm_cpuid_entry2* kvm_get_supported_cpuid_entry (int) ;
 int stderr ;

void nested_vmx_check_supported(void)
{
 struct kvm_cpuid_entry2 *entry = kvm_get_supported_cpuid_entry(1);

 if (!(entry->ecx & CPUID_VMX)) {
  fprintf(stderr, "nested VMX not enabled, skipping test\n");
  exit(KSFT_SKIP);
 }
}
