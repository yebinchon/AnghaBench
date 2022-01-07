
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct snd_usb_audio {scalar_t__ usb_id; } ;
typedef int __u8 ;
typedef int __u16 ;


 scalar_t__ USB_ID (int,int) ;
 int USB_ID_VENDOR (scalar_t__) ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 struct snd_usb_audio* dev_get_drvdata (int *) ;
 scalar_t__ is_itf_usb_dsd_dac (scalar_t__) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

void snd_usb_ctl_msg_quirk(struct usb_device *dev, unsigned int pipe,
      __u8 request, __u8 requesttype, __u16 value,
      __u16 index, void *data, __u16 size)
{
 struct snd_usb_audio *chip = dev_get_drvdata(&dev->dev);

 if (!chip)
  return;




 if (USB_ID_VENDOR(chip->usb_id) == 0x23ba &&
     (requesttype & USB_TYPE_MASK) == USB_TYPE_CLASS)
  msleep(20);





 if (USB_ID_VENDOR(chip->usb_id) == 0x0644 &&
     (requesttype & USB_TYPE_MASK) == USB_TYPE_CLASS)
  msleep(20);




 if (is_itf_usb_dsd_dac(chip->usb_id)
     && (requesttype & USB_TYPE_MASK) == USB_TYPE_CLASS)
  msleep(20);





 if ((chip->usb_id == USB_ID(0x1686, 0x00dd) ||
      chip->usb_id == USB_ID(0x046d, 0x0a46) ||
      chip->usb_id == USB_ID(0x0b0e, 0x0349)) &&
     (requesttype & USB_TYPE_MASK) == USB_TYPE_CLASS)
  usleep_range(1000, 2000);
}
