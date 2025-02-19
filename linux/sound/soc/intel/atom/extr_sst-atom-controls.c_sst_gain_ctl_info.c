
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_gain_mixer_control {int max; int min; scalar_t__ stereo; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int sst_gain_ctl_info(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct sst_gain_mixer_control *mc = (void *)kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = mc->stereo ? 2 : 1;
 uinfo->value.integer.min = mc->min;
 uinfo->value.integer.max = mc->max;

 return 0;
}
