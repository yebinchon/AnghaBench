
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct snd_usb_audio* chip; } ;
struct snd_usb_audio {int dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int,int,int,int,unsigned char*,int) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_mbox1_switch_update(struct usb_mixer_interface *mixer, int val)
{
 struct snd_usb_audio *chip = mixer->chip;
 int err;
 unsigned char buff[3];

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;


 err = snd_usb_ctl_msg(chip->dev,
    usb_rcvctrlpipe(chip->dev, 0), 0x81,
    USB_DIR_IN |
    USB_TYPE_CLASS |
    USB_RECIP_INTERFACE, 0x00, 0x500, buff, 1);
 if (err < 0)
  goto err;
 err = snd_usb_ctl_msg(chip->dev,
    usb_rcvctrlpipe(chip->dev, 0), 0x81,
    USB_DIR_IN |
    USB_TYPE_CLASS |
    USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
 if (err < 0)
  goto err;
 if (val == 0) {
  buff[0] = 0x80;
  buff[1] = 0xbb;
  buff[2] = 0x00;
 } else {
  buff[0] = buff[1] = buff[2] = 0x00;
 }


 err = snd_usb_ctl_msg(chip->dev,
    usb_sndctrlpipe(chip->dev, 0), 0x1,
    USB_TYPE_CLASS |
    USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
 if (err < 0)
  goto err;
 err = snd_usb_ctl_msg(chip->dev,
    usb_rcvctrlpipe(chip->dev, 0), 0x81,
    USB_DIR_IN |
    USB_TYPE_CLASS |
    USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
 if (err < 0)
  goto err;
 err = snd_usb_ctl_msg(chip->dev,
    usb_rcvctrlpipe(chip->dev, 0), 0x81,
    USB_DIR_IN |
    USB_TYPE_CLASS |
    USB_RECIP_ENDPOINT, 0x100, 0x2, buff, 3);
 if (err < 0)
  goto err;

err:
 snd_usb_unlock_shutdown(chip);
 return err;
}
