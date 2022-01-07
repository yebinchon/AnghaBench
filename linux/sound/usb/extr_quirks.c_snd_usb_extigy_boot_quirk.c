
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_host_config {int dummy; } ;
struct usb_device {int dev; struct usb_host_config* actconfig; int descriptor; } ;
struct TYPE_2__ {int wTotalLength; } ;


 int ENODEV ;
 int EXTIGY_FIRMWARE_SIZE_NEW ;
 int EXTIGY_FIRMWARE_SIZE_OLD ;
 int USB_DT_DEVICE ;
 int dev_dbg (int *,char*,...) ;
 TYPE_1__* get_cfg_desc (struct usb_host_config*) ;
 int le16_to_cpu (int ) ;
 int snd_usb_ctl_msg (struct usb_device*,int ,int,int,int,int,int *,int ) ;
 int usb_get_descriptor (struct usb_device*,int ,int ,int *,int) ;
 int usb_reset_configuration (struct usb_device*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_usb_extigy_boot_quirk(struct usb_device *dev, struct usb_interface *intf)
{
 struct usb_host_config *config = dev->actconfig;
 int err;

 if (le16_to_cpu(get_cfg_desc(config)->wTotalLength) == EXTIGY_FIRMWARE_SIZE_OLD ||
     le16_to_cpu(get_cfg_desc(config)->wTotalLength) == EXTIGY_FIRMWARE_SIZE_NEW) {
  dev_dbg(&dev->dev, "sending Extigy boot sequence...\n");

  err = snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev,0),
          0x10, 0x43, 0x0001, 0x000a, ((void*)0), 0);
  if (err < 0)
   dev_dbg(&dev->dev, "error sending boot message: %d\n", err);
  err = usb_get_descriptor(dev, USB_DT_DEVICE, 0,
    &dev->descriptor, sizeof(dev->descriptor));
  config = dev->actconfig;
  if (err < 0)
   dev_dbg(&dev->dev, "error usb_get_descriptor: %d\n", err);
  err = usb_reset_configuration(dev);
  if (err < 0)
   dev_dbg(&dev->dev, "error usb_reset_configuration: %d\n", err);
  dev_dbg(&dev->dev, "extigy_boot: new boot length = %d\n",
       le16_to_cpu(get_cfg_desc(config)->wTotalLength));
  return -ENODEV;
 }
 return 0;
}
