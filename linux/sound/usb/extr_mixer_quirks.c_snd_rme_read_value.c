
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int dev; } ;
struct snd_usb_audio {struct usb_device* dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,unsigned int,int) ;
 int snd_usb_ctl_msg (struct usb_device*,int ,unsigned int,int,int ,int ,int *,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_rme_read_value(struct snd_usb_audio *chip,
         unsigned int item,
         u32 *value)
{
 struct usb_device *dev = chip->dev;
 int err;

 err = snd_usb_ctl_msg(dev, usb_rcvctrlpipe(dev, 0),
         item,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0, 0,
         value, sizeof(*value));
 if (err < 0)
  dev_err(&dev->dev,
   "unable to issue vendor read request %d (ret = %d)",
   item, err);
 return err;
}
