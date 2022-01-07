
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUEST_SYNC (int) ;
 int vmcall () ;

void l2_guest_code(void)
{
 GUEST_SYNC(6);

 GUEST_SYNC(7);


 vmcall();
}
