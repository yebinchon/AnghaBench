
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_nested_state {int flags; scalar_t__ size; } ;


 int KSFT_SKIP ;
 int KVM_CAP_HYPERV_ENLIGHTENED_VMCS ;
 int KVM_CAP_NESTED_STATE ;
 int KVM_STATE_NESTED_RUN_PENDING ;
 int VCPU_ID ;
 int exit (int ) ;
 int have_evmcs ;
 int kvm_check_cap (int ) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int nested_vmx_check_supported () ;
 int printf (char*) ;
 int set_default_state (struct kvm_nested_state*) ;
 int test_nested_state_expect_efault (struct kvm_vm*,int *) ;
 int test_nested_state_expect_einval (struct kvm_vm*,struct kvm_nested_state*) ;
 int test_vmx_nested_state (struct kvm_vm*) ;
 struct kvm_vm* vm_create_default (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 struct kvm_vm *vm;
 struct kvm_nested_state state;

 have_evmcs = kvm_check_cap(KVM_CAP_HYPERV_ENLIGHTENED_VMCS);

 if (!kvm_check_cap(KVM_CAP_NESTED_STATE)) {
  printf("KVM_CAP_NESTED_STATE not available, skipping test\n");
  exit(KSFT_SKIP);
 }





 nested_vmx_check_supported();

 vm = vm_create_default(VCPU_ID, 0, 0);


 test_nested_state_expect_efault(vm, ((void*)0));


 set_default_state(&state);
 state.size = 0;
 test_nested_state_expect_einval(vm, &state);
 set_default_state(&state);
 state.flags = 0xf;
 test_nested_state_expect_einval(vm, &state);





 set_default_state(&state);
 state.flags = KVM_STATE_NESTED_RUN_PENDING;
 test_nested_state_expect_einval(vm, &state);

 test_vmx_nested_state(vm);

 kvm_vm_free(vm);
 return 0;
}
