
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_nested_state {int data; } ;


 int memcpy (int *,int *,int) ;

void set_revision_id_for_vmcs12(struct kvm_nested_state *state,
    u32 vmcs12_revision)
{

 memcpy(&state->data, &vmcs12_revision, sizeof(u32));
}
