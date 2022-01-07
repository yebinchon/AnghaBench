
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_mixer_control {int platform_max; int max; scalar_t__ min; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;
struct TYPE_5__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ snd_soc_volsw_is_stereo (struct soc_mixer_control*) ;
 int strstr (int ,char*) ;

int snd_soc_info_volsw(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int platform_max;

 if (!mc->platform_max)
  mc->platform_max = mc->max;
 platform_max = mc->platform_max;

 if (platform_max == 1 && !strstr(kcontrol->id.name, " Volume"))
  uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 else
  uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;

 uinfo->count = snd_soc_volsw_is_stereo(mc) ? 2 : 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = platform_max - mc->min;
 return 0;
}
