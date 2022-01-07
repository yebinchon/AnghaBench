
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 scalar_t__ snd_usb_pipe_sanity_check (struct usb_device*,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int *,int ,int) ;
 int usb_reset_device (struct usb_device*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_usb_nativeinstruments_boot_quirk(struct usb_device *dev)
{
 int ret;

 if (snd_usb_pipe_sanity_check(dev, usb_sndctrlpipe(dev, 0)))
  return -EINVAL;
 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
      0xaf, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
      1, 0, ((void*)0), 0, 1000);

 if (ret < 0)
  return ret;

 usb_reset_device(dev);




 return -EAGAIN;
}
