
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUEST_ASSERT (int) ;
 int GUEST_RIP ;
 int GUEST_SYNC (int) ;
 int vmcall () ;
 int vmreadz (int ) ;
 int vmwrite (int ,int) ;

void l2_guest_code(void)
{
 GUEST_SYNC(6);


 vmcall();


 GUEST_ASSERT(vmreadz(GUEST_RIP) == 0xc0ffee);
 GUEST_SYNC(10);
 GUEST_ASSERT(vmreadz(GUEST_RIP) == 0xc0ffee);
 GUEST_ASSERT(!vmwrite(GUEST_RIP, 0xc0fffee));
 GUEST_SYNC(11);
 GUEST_ASSERT(vmreadz(GUEST_RIP) == 0xc0fffee);
 GUEST_ASSERT(!vmwrite(GUEST_RIP, 0xc0ffffee));
 GUEST_SYNC(12);


 vmcall();
}
