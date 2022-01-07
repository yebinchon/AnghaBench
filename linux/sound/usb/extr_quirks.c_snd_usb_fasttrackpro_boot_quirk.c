
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dev; TYPE_2__* actconfig; } ;
struct TYPE_3__ {int bConfigurationValue; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int usb_driver_set_configuration (struct usb_device*,int) ;

__attribute__((used)) static int snd_usb_fasttrackpro_boot_quirk(struct usb_device *dev)
{
 int err;

 if (dev->actconfig->desc.bConfigurationValue == 1) {
  dev_info(&dev->dev,
      "Fast Track Pro switching to config #2\n");





  err = usb_driver_set_configuration(dev, 2);
  if (err < 0)
   dev_dbg(&dev->dev,
    "error usb_driver_set_configuration: %d\n",
    err);



  return -ENODEV;
 } else
  dev_info(&dev->dev, "Fast Track Pro config OK\n");

 return 0;
}
