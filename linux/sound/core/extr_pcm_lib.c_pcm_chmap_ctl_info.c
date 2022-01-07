
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_chmap {int max_channels; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int max; scalar_t__ min; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {TYPE_1__ value; int count; int type; } ;


 int SNDRV_CHMAP_LAST ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct snd_pcm_chmap* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcm_chmap_ctl_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct snd_pcm_chmap *info = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 0;
 uinfo->count = info->max_channels;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = SNDRV_CHMAP_LAST;
 return 0;
}
