
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct snd_usb_audio* chip; } ;
struct snd_usb_audio {int dev; } ;


 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_emu0204_ch_switch_update(struct usb_mixer_interface *mixer,
     int value)
{
 struct snd_usb_audio *chip = mixer->chip;
 int err;
 unsigned char buf[2];

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;

 buf[0] = 0x01;
 buf[1] = value ? 0x02 : 0x01;
 err = snd_usb_ctl_msg(chip->dev,
        usb_sndctrlpipe(chip->dev, 0), UAC_SET_CUR,
        USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
        0x0400, 0x0e00, buf, 2);
 snd_usb_unlock_shutdown(chip);
 return err;
}
