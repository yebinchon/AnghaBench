
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_mixer_elem_list {TYPE_1__* mixer; } ;
struct snd_usb_audio {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {struct snd_usb_audio* chip; } ;


 int SND_RME_GET_STATUS1 ;
 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme_read_value (struct snd_usb_audio*,int ,int *) ;
 int snd_usb_lock_shutdown (struct snd_usb_audio*) ;
 int snd_usb_unlock_shutdown (struct snd_usb_audio*) ;

__attribute__((used)) static int snd_rme_get_status1(struct snd_kcontrol *kcontrol,
          u32 *status1)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 struct snd_usb_audio *chip = list->mixer->chip;
 int err;

 err = snd_usb_lock_shutdown(chip);
 if (err < 0)
  return err;
 err = snd_rme_read_value(chip, SND_RME_GET_STATUS1, status1);
 snd_usb_unlock_shutdown(chip);
 return err;
}
