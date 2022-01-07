
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_cpuid2 {int dummy; } ;


 int KSFT_SKIP ;
 int KVM_CAP_HYPERV_CPUID ;
 int KVM_CAP_HYPERV_ENLIGHTENED_VMCS ;
 int VCPU_ID ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int free (struct kvm_cpuid2*) ;
 int guest_code ;
 int kvm_check_cap (int ) ;
 struct kvm_cpuid2* kvm_get_supported_hv_cpuid (struct kvm_vm*) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdout ;
 int test_hv_cpuid (struct kvm_cpuid2*,int) ;
 int test_hv_cpuid_e2big (struct kvm_vm*) ;
 int vcpu_enable_evmcs (struct kvm_vm*,int ) ;
 struct kvm_vm* vm_create_default (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 struct kvm_vm *vm;
 int rv;
 struct kvm_cpuid2 *hv_cpuid_entries;


 setbuf(stdout, ((void*)0));

 rv = kvm_check_cap(KVM_CAP_HYPERV_CPUID);
 if (!rv) {
  fprintf(stderr,
   "KVM_CAP_HYPERV_CPUID not supported, skip test\n");
  exit(KSFT_SKIP);
 }


 vm = vm_create_default(VCPU_ID, 0, guest_code);

 test_hv_cpuid_e2big(vm);

 hv_cpuid_entries = kvm_get_supported_hv_cpuid(vm);
 if (!hv_cpuid_entries)
  return 1;

 test_hv_cpuid(hv_cpuid_entries, 0);

 free(hv_cpuid_entries);

 if (!kvm_check_cap(KVM_CAP_HYPERV_ENLIGHTENED_VMCS)) {
  fprintf(stderr,
   "Enlightened VMCS is unsupported, skip related test\n");
  goto vm_free;
 }

 vcpu_enable_evmcs(vm, VCPU_ID);

 hv_cpuid_entries = kvm_get_supported_hv_cpuid(vm);
 if (!hv_cpuid_entries)
  return 1;

 test_hv_cpuid(hv_cpuid_entries, 1);

 free(hv_cpuid_entries);

vm_free:
 kvm_vm_free(vm);

 return 0;
}
