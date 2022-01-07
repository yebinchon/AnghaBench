
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_state {int flags; int size; scalar_t__ format; } ;


 int KVM_STATE_NESTED_GUEST_MODE ;
 int KVM_STATE_NESTED_RUN_PENDING ;
 int memset (struct kvm_nested_state*,int ,int) ;

void set_default_state(struct kvm_nested_state *state)
{
 memset(state, 0, sizeof(*state));
 state->flags = KVM_STATE_NESTED_RUN_PENDING |
         KVM_STATE_NESTED_GUEST_MODE;
 state->format = 0;
 state->size = sizeof(*state);
}
