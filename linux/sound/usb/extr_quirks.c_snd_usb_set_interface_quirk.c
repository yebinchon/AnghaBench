
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct snd_usb_audio {int usb_id; } ;


 int USB_ID_VENDOR (int ) ;
 struct snd_usb_audio* dev_get_drvdata (int *) ;
 int msleep (int) ;

void snd_usb_set_interface_quirk(struct usb_device *dev)
{
 struct snd_usb_audio *chip = dev_get_drvdata(&dev->dev);

 if (!chip)
  return;




 switch (USB_ID_VENDOR(chip->usb_id)) {
 case 0x23ba:
 case 0x0644:
  msleep(50);
  break;
 }
}
