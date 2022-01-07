
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_nested_state {int dummy; } ;


 int TEST_ASSERT (int,char*,int ,int,int,int ,int) ;
 int VCPU_ID ;
 int errno ;
 int strerror (int) ;
 int vcpu_nested_state_set (struct kvm_vm*,int ,struct kvm_nested_state*,int) ;

void test_nested_state_expect_errno(struct kvm_vm *vm,
        struct kvm_nested_state *state,
        int expected_errno)
{
 int rv;

 rv = vcpu_nested_state_set(vm, VCPU_ID, state, 1);
 TEST_ASSERT(rv == -1 && errno == expected_errno,
  "Expected %s (%d) from vcpu_nested_state_set but got rv: %i errno: %s (%d)",
  strerror(expected_errno), expected_errno, rv, strerror(errno),
  errno);
}
