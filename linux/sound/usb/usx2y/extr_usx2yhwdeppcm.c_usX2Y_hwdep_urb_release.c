
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void usX2Y_hwdep_urb_release(struct urb **urb)
{
 usb_kill_urb(*urb);
 usb_free_urb(*urb);
 *urb = ((void*)0);
}
