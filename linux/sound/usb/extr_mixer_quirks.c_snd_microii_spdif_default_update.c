
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct usb_mixer_elem_list {TYPE_2__* kctl; TYPE_1__* mixer; } ;
struct snd_usb_audio {int dev; } ;
struct TYPE_4__ {unsigned int private_value; } ;
struct TYPE_3__ {struct snd_usb_audio* chip; } ;


 unsigned int IEC958_AES0_NONAUDIO ;
 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int snd_usb_ctl_msg (int ,int ,int ,int,unsigned int,int,int *,int ) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_microii_spdif_default_update(struct usb_mixer_elem_list *list)
{
 struct snd_usb_audio *chip = list->mixer->chip;
 unsigned int pval = list->kctl->private_value;
 u8 reg;
 int err;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;

 reg = ((pval >> 4) & 0xf0) | (pval & 0x0f);
 err = snd_usb_ctl_msg(chip->dev,
   usb_sndctrlpipe(chip->dev, 0),
   UAC_SET_CUR,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
   reg,
   2,
   ((void*)0),
   0);
 if (err < 0)
  goto end;

 reg = (pval & IEC958_AES0_NONAUDIO) ? 0xa0 : 0x20;
 reg |= (pval >> 12) & 0x0f;
 err = snd_usb_ctl_msg(chip->dev,
   usb_sndctrlpipe(chip->dev, 0),
   UAC_SET_CUR,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
   reg,
   3,
   ((void*)0),
   0);
 if (err < 0)
  goto end;

 end:
 snd_usb_unlock_shutdown(chip);
 return err;
}
