
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int EINVAL ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_INTERFACE ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ snd_usb_pipe_sanity_check (struct usb_device*,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int,int *,int ,int) ;
 int usb_set_interface (struct usb_device*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_usb_axefx3_boot_quirk(struct usb_device *dev)
{
 int err;

 dev_dbg(&dev->dev, "Waiting for Axe-Fx III to boot up...\n");

 if (snd_usb_pipe_sanity_check(dev, usb_sndctrlpipe(dev, 0)))
  return -EINVAL;





 err = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
    USB_REQ_SET_INTERFACE, USB_RECIP_INTERFACE,
    1, 1, ((void*)0), 0, 120000);
 if (err < 0) {
  dev_err(&dev->dev,
   "failed waiting for Axe-Fx III to boot: %d\n", err);
  return err;
 }

 dev_dbg(&dev->dev, "Axe-Fx III is now ready\n");

 err = usb_set_interface(dev, 1, 0);
 if (err < 0)
  dev_dbg(&dev->dev,
   "error stopping Axe-Fx III interface: %d\n", err);

 return 0;
}
