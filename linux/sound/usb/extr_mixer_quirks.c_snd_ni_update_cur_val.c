
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


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;
 int usb_control_msg (int ,int ,unsigned int,int,unsigned int,unsigned int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_ni_update_cur_val(struct usb_mixer_elem_list *list)
{
 struct snd_usb_audio *chip = list->mixer->chip;
 unsigned int pval = list->kctl->private_value;
 int err;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;
 err = usb_control_msg(chip->dev, usb_sndctrlpipe(chip->dev, 0),
         (pval >> 16) & 0xff,
         USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
         pval >> 24, pval & 0xffff, ((void*)0), 0, 1000);
 snd_usb_unlock_shutdown(chip);
 return err;
}
