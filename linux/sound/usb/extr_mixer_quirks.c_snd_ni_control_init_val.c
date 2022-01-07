
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_mixer_interface {TYPE_1__* chip; } ;
struct usb_device {int dev; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int snd_usb_ctl_msg (struct usb_device*,int ,unsigned int,int,int ,unsigned int,scalar_t__*,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_ni_control_init_val(struct usb_mixer_interface *mixer,
       struct snd_kcontrol *kctl)
{
 struct usb_device *dev = mixer->chip->dev;
 unsigned int pval = kctl->private_value;
 u8 value;
 int err;

 err = snd_usb_ctl_msg(dev, usb_rcvctrlpipe(dev, 0),
         (pval >> 16) & 0xff,
         USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
         0, pval & 0xffff, &value, 1);
 if (err < 0) {
  dev_err(&dev->dev,
   "unable to issue vendor read request (ret = %d)", err);
  return err;
 }

 kctl->private_value |= ((unsigned int)value << 24);
 return 0;
}
