
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_chmap {struct hdac_chmap* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct hdac_chmap {int channels_max; } ;


 int SNDRV_CHMAP_LAST ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct snd_pcm_chmap* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_chmap_ctl_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct snd_pcm_chmap *info = snd_kcontrol_chip(kcontrol);
 struct hdac_chmap *chmap = info->private_data;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = chmap->channels_max;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = SNDRV_CHMAP_LAST;
 return 0;
}
