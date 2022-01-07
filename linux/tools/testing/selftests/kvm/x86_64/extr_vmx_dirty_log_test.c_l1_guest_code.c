
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_pages {int vmcs_gpa; } ;


 scalar_t__ EXIT_REASON_VMCALL ;
 int GUEST_ASSERT (int) ;
 int GUEST_DONE () ;
 int GUEST_SYNC (int) ;
 int L2_GUEST_STACK_SIZE ;
 int VM_EXIT_REASON ;
 int l2_guest_code ;
 int load_vmcs (struct vmx_pages*) ;
 int prepare_for_vmx_operation (struct vmx_pages*) ;
 int prepare_vmcs (struct vmx_pages*,int ,unsigned long*) ;
 int vmlaunch () ;
 scalar_t__ vmreadz (int ) ;

void l1_guest_code(struct vmx_pages *vmx)
{

 unsigned long l2_guest_stack[64];

 GUEST_ASSERT(vmx->vmcs_gpa);
 GUEST_ASSERT(prepare_for_vmx_operation(vmx));
 GUEST_ASSERT(load_vmcs(vmx));

 prepare_vmcs(vmx, l2_guest_code,
       &l2_guest_stack[64]);

 GUEST_SYNC(0);
 GUEST_ASSERT(!vmlaunch());
 GUEST_SYNC(0);
 GUEST_ASSERT(vmreadz(VM_EXIT_REASON) == EXIT_REASON_VMCALL);
 GUEST_DONE();
}
