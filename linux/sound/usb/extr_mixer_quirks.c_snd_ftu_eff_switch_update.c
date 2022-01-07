
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_list {TYPE_2__* kctl; TYPE_1__* mixer; } ;
struct snd_usb_audio {int dev; } ;
struct TYPE_4__ {unsigned int private_value; } ;
struct TYPE_3__ {struct snd_usb_audio* chip; } ;


 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,unsigned int,unsigned int,unsigned char*,int) ;
 unsigned int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_ftu_eff_switch_update(struct usb_mixer_elem_list *list)
{
 struct snd_usb_audio *chip = list->mixer->chip;
 unsigned int pval = list->kctl->private_value;
 unsigned char value[2];
 int err;

 value[0] = pval >> 24;
 value[1] = 0;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;
 err = snd_usb_ctl_msg(chip->dev,
         usb_sndctrlpipe(chip->dev, 0),
         UAC_SET_CUR,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
         pval & 0xff00,
         snd_usb_ctrl_intf(chip) | ((pval & 0xff) << 8),
         value, 2);
 snd_usb_unlock_shutdown(chip);
 return err;
}
