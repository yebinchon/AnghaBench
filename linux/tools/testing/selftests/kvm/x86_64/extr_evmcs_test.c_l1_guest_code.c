
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_pages {int vmcs_gpa; scalar_t__ enlightened_vmcs_gpa; int vp_assist; int vp_assist_gpa; } ;


 scalar_t__ EXIT_REASON_VMCALL ;
 int GUEST_ASSERT (int) ;
 int GUEST_SYNC (int) ;
 int L2_GUEST_STACK_SIZE ;
 int VM_EXIT_REASON ;
 int enable_vp_assist (int ,int ) ;
 int l2_guest_code ;
 int load_vmcs (struct vmx_pages*) ;
 int prepare_for_vmx_operation (struct vmx_pages*) ;
 int prepare_vmcs (struct vmx_pages*,int ,unsigned long*) ;
 int vmlaunch () ;
 scalar_t__ vmptrstz () ;
 scalar_t__ vmreadz (int ) ;
 int vmresume () ;

void l1_guest_code(struct vmx_pages *vmx_pages)
{

 unsigned long l2_guest_stack[64];

 enable_vp_assist(vmx_pages->vp_assist_gpa, vmx_pages->vp_assist);

 GUEST_ASSERT(vmx_pages->vmcs_gpa);
 GUEST_ASSERT(prepare_for_vmx_operation(vmx_pages));
 GUEST_SYNC(3);
 GUEST_ASSERT(load_vmcs(vmx_pages));
 GUEST_ASSERT(vmptrstz() == vmx_pages->enlightened_vmcs_gpa);

 GUEST_SYNC(4);
 GUEST_ASSERT(vmptrstz() == vmx_pages->enlightened_vmcs_gpa);

 prepare_vmcs(vmx_pages, l2_guest_code,
       &l2_guest_stack[64]);

 GUEST_SYNC(5);
 GUEST_ASSERT(vmptrstz() == vmx_pages->enlightened_vmcs_gpa);
 GUEST_ASSERT(!vmlaunch());
 GUEST_ASSERT(vmptrstz() == vmx_pages->enlightened_vmcs_gpa);
 GUEST_SYNC(8);
 GUEST_ASSERT(!vmresume());
 GUEST_ASSERT(vmreadz(VM_EXIT_REASON) == EXIT_REASON_VMCALL);
 GUEST_SYNC(9);
}
