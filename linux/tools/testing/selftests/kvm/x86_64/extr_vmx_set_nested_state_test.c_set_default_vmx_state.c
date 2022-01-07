
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flags; } ;
struct TYPE_5__ {int vmxon_pa; int vmcs12_pa; TYPE_1__ smm; } ;
struct TYPE_6__ {TYPE_2__ vmx; } ;
struct kvm_nested_state {int flags; int size; TYPE_3__ hdr; scalar_t__ format; } ;


 int KVM_STATE_NESTED_EVMCS ;
 int KVM_STATE_NESTED_GUEST_MODE ;
 int KVM_STATE_NESTED_RUN_PENDING ;
 int VMCS12_REVISION ;
 scalar_t__ have_evmcs ;
 int memset (struct kvm_nested_state*,int ,int) ;
 int set_revision_id_for_vmcs12 (struct kvm_nested_state*,int ) ;

void set_default_vmx_state(struct kvm_nested_state *state, int size)
{
 memset(state, 0, size);
 state->flags = KVM_STATE_NESTED_GUEST_MODE |
   KVM_STATE_NESTED_RUN_PENDING;
 if (have_evmcs)
  state->flags |= KVM_STATE_NESTED_EVMCS;
 state->format = 0;
 state->size = size;
 state->hdr.vmx.vmxon_pa = 0x1000;
 state->hdr.vmx.vmcs12_pa = 0x2000;
 state->hdr.vmx.smm.flags = 0;
 set_revision_id_for_vmcs12(state, VMCS12_REVISION);
}
