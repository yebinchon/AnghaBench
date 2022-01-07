
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_pages {int dummy; } ;


 int GUEST_DONE () ;
 int GUEST_SYNC (int) ;
 int l1_guest_code (struct vmx_pages*) ;

void guest_code(struct vmx_pages *vmx_pages)
{
 GUEST_SYNC(1);
 GUEST_SYNC(2);

 if (vmx_pages)
  l1_guest_code(vmx_pages);

 GUEST_DONE();
}
