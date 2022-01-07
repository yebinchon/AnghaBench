
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {struct kvm_run* state; } ;
struct kvm_vm {int dummy; } ;
struct kvm_run {int dummy; } ;


 int TEST_ASSERT (int ,char*,int ) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

struct kvm_run *vcpu_state(struct kvm_vm *vm, uint32_t vcpuid)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 return vcpu->state;
}
