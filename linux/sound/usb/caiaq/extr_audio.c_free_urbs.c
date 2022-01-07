
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct urb** transfer_buffer; } ;


 int N_URBS ;
 int kfree (struct urb**) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void free_urbs(struct urb **urbs)
{
 int i;

 if (!urbs)
  return;

 for (i = 0; i < N_URBS; i++) {
  if (!urbs[i])
   continue;

  usb_kill_urb(urbs[i]);
  kfree(urbs[i]->transfer_buffer);
  usb_free_urb(urbs[i]);
 }

 kfree(urbs);
}
