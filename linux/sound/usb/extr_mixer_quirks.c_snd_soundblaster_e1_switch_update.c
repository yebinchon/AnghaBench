
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {struct snd_usb_audio* chip; } ;
struct snd_usb_audio {int dev; } ;


 int HID_REQ_SET_REPORT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_soundblaster_e1_switch_update(struct usb_mixer_interface *mixer,
          unsigned char state)
{
 struct snd_usb_audio *chip = mixer->chip;
 int err;
 unsigned char buff[2];

 buff[0] = 0x02;
 buff[1] = state ? 0x02 : 0x00;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;
 err = snd_usb_ctl_msg(chip->dev,
   usb_sndctrlpipe(chip->dev, 0), HID_REQ_SET_REPORT,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
   0x0202, 3, buff, 2);
 snd_usb_unlock_shutdown(chip);
 return err;
}
