
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_run {scalar_t__ exit_reason; } ;


 scalar_t__ KVM_EXIT_SHUTDOWN ;
 int TEST_ASSERT (int,char*,scalar_t__,int ) ;
 int VCPU_ID ;
 int exit_reason_str (scalar_t__) ;
 int set_msr_platform_info_enabled (struct kvm_vm*,int) ;
 int vcpu_run (struct kvm_vm*,int ) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;

__attribute__((used)) static void test_msr_platform_info_disabled(struct kvm_vm *vm)
{
 struct kvm_run *run = vcpu_state(vm, VCPU_ID);

 set_msr_platform_info_enabled(vm, 0);
 vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_SHUTDOWN,
   "Exit_reason other than KVM_EXIT_SHUTDOWN: %u (%s)\n",
   run->exit_reason,
   exit_reason_str(run->exit_reason));
}
