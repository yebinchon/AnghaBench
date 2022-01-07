
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {int channels; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;

__attribute__((used)) static int scarlett_ctl_switch_info(struct snd_kcontrol *kctl,
  struct snd_ctl_elem_info *uinfo)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 uinfo->count = elem->channels;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 1;
 return 0;
}
