
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mreg_control {int max; int min; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int max; int min; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

int snd_soc_info_xr_sx(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_mreg_control *mc =
  (struct soc_mreg_control *)kcontrol->private_value;
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = mc->min;
 uinfo->value.integer.max = mc->max;

 return 0;
}
