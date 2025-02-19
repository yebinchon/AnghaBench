
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {int min; int platform_max; int max; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ snd_soc_volsw_is_stereo (struct soc_mixer_control*) ;

int snd_soc_info_volsw_range(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int platform_max;
 int min = mc->min;

 if (!mc->platform_max)
  mc->platform_max = mc->max;
 platform_max = mc->platform_max;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = snd_soc_volsw_is_stereo(mc) ? 2 : 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = platform_max - min;

 return 0;
}
