
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_nested_state {int dummy; } ;


 int VCPU_ID ;
 int vcpu_nested_state_set (struct kvm_vm*,int ,struct kvm_nested_state*,int) ;

void test_nested_state(struct kvm_vm *vm, struct kvm_nested_state *state)
{
 vcpu_nested_state_set(vm, VCPU_ID, state, 0);
}
