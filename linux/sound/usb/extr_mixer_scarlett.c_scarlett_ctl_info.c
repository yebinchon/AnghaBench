
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {int channels; } ;
struct snd_kcontrol {scalar_t__ private_value; struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int step; scalar_t__ max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ SND_SCARLETT_LEVEL_BIAS ;

__attribute__((used)) static int scarlett_ctl_info(struct snd_kcontrol *kctl,
        struct snd_ctl_elem_info *uinfo)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = elem->channels;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = (int)kctl->private_value +
  SND_SCARLETT_LEVEL_BIAS;
 uinfo->value.integer.step = 1;
 return 0;
}
