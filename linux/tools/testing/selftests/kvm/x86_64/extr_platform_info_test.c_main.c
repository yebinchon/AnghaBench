
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_vm {int dummy; } ;


 int KSFT_SKIP ;
 int KVM_CAP_MSR_PLATFORM_INFO ;
 int MSR_PLATFORM_INFO ;
 int MSR_PLATFORM_INFO_MAX_TURBO_RATIO ;
 int VCPU_ID ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int guest_code ;
 int kvm_check_cap (int ) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdout ;
 int test_msr_platform_info_disabled (struct kvm_vm*) ;
 int test_msr_platform_info_enabled (struct kvm_vm*) ;
 int vcpu_get_msr (struct kvm_vm*,int ,int ) ;
 int vcpu_set_msr (struct kvm_vm*,int ,int ,int) ;
 struct kvm_vm* vm_create_default (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 struct kvm_vm *vm;
 int rv;
 uint64_t msr_platform_info;


 setbuf(stdout, ((void*)0));

 rv = kvm_check_cap(KVM_CAP_MSR_PLATFORM_INFO);
 if (!rv) {
  fprintf(stderr,
   "KVM_CAP_MSR_PLATFORM_INFO not supported, skip test\n");
  exit(KSFT_SKIP);
 }

 vm = vm_create_default(VCPU_ID, 0, guest_code);

 msr_platform_info = vcpu_get_msr(vm, VCPU_ID, MSR_PLATFORM_INFO);
 vcpu_set_msr(vm, VCPU_ID, MSR_PLATFORM_INFO,
  msr_platform_info | MSR_PLATFORM_INFO_MAX_TURBO_RATIO);
 test_msr_platform_info_enabled(vm);
 test_msr_platform_info_disabled(vm);
 vcpu_set_msr(vm, VCPU_ID, MSR_PLATFORM_INFO, msr_platform_info);

 kvm_vm_free(vm);

 return 0;
}
