
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_pages {int dummy; } ;


 int init_vmcs_control_fields (struct vmx_pages*) ;
 int init_vmcs_guest_state (void*,void*) ;
 int init_vmcs_host_state () ;

void prepare_vmcs(struct vmx_pages *vmx, void *guest_rip, void *guest_rsp)
{
 init_vmcs_control_fields(vmx);
 init_vmcs_host_state();
 init_vmcs_guest_state(guest_rip, guest_rsp);
}
