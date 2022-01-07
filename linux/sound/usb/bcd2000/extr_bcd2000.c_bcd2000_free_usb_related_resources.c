
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct bcd2000 {int * intf; int midi_in_urb; int midi_out_urb; } ;


 int usb_free_urb (int ) ;
 int usb_set_intfdata (int *,int *) ;

__attribute__((used)) static void bcd2000_free_usb_related_resources(struct bcd2000 *bcd2k,
      struct usb_interface *interface)
{


 usb_free_urb(bcd2k->midi_out_urb);
 usb_free_urb(bcd2k->midi_in_urb);

 if (bcd2k->intf) {
  usb_set_intfdata(bcd2k->intf, ((void*)0));
  bcd2k->intf = ((void*)0);
 }
}
