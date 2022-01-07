
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_mixer_elem_list {TYPE_2__* kctl; TYPE_1__* mixer; } ;
struct snd_usb_audio {int dev; } ;
struct TYPE_4__ {int private_value; } ;
struct TYPE_3__ {struct snd_usb_audio* chip; } ;


 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int ,int,int *,int ) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_microii_spdif_switch_update(struct usb_mixer_elem_list *list)
{
 struct snd_usb_audio *chip = list->mixer->chip;
 u8 reg = list->kctl->private_value;
 int err;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;

 err = snd_usb_ctl_msg(chip->dev,
   usb_sndctrlpipe(chip->dev, 0),
   UAC_SET_CUR,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
   reg,
   9,
   ((void*)0),
   0);

 snd_usb_unlock_shutdown(chip);
 return err;
}
