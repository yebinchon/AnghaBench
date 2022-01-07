
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int snd_usbmidi_submit_urb(struct urb *urb, gfp_t flags)
{
 int err = usb_submit_urb(urb, flags);
 if (err < 0 && err != -ENODEV)
  dev_err(&urb->dev->dev, "usb_submit_urb: %d\n", err);
 return err;
}
