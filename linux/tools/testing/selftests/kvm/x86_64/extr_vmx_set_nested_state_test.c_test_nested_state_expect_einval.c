
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_nested_state {int dummy; } ;


 int EINVAL ;
 int test_nested_state_expect_errno (struct kvm_vm*,struct kvm_nested_state*,int ) ;

void test_nested_state_expect_einval(struct kvm_vm *vm,
         struct kvm_nested_state *state)
{
 test_nested_state_expect_errno(vm, state, EINVAL);
}
