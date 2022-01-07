
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct snd_usb_audio* chip; } ;
struct snd_usb_audio {int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int snd_usb_ctl_msg (int ,int ,int,int,int,int ,unsigned char*,int) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_xonar_u1_switch_update(struct usb_mixer_interface *mixer,
          unsigned char status)
{
 struct snd_usb_audio *chip = mixer->chip;
 int err;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;
 err = snd_usb_ctl_msg(chip->dev,
         usb_sndctrlpipe(chip->dev, 0), 0x08,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
         50, 0, &status, 1);
 snd_usb_unlock_shutdown(chip);
 return err;
}
