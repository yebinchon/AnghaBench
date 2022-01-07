
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_pages {int dummy; } ;


 int GUEST_ASSERT (int) ;
 int L2_GUEST_STACK_SIZE ;
 int l2_guest_code ;
 int load_vmcs (struct vmx_pages*) ;
 int prepare_for_vmx_operation (struct vmx_pages*) ;
 int prepare_vmcs (struct vmx_pages*,int ,unsigned long*) ;
 int vmlaunch () ;

__attribute__((used)) static void l1_guest_code(struct vmx_pages *vmx_pages)
{

 unsigned long l2_guest_stack[64];

 GUEST_ASSERT(prepare_for_vmx_operation(vmx_pages));
 GUEST_ASSERT(load_vmcs(vmx_pages));


 prepare_vmcs(vmx_pages, l2_guest_code,
       &l2_guest_stack[64]);

 GUEST_ASSERT(!vmlaunch());
 GUEST_ASSERT(0);
}
