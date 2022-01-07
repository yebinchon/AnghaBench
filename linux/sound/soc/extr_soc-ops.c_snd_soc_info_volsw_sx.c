
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {scalar_t__ min; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; } ;


 int snd_soc_info_volsw (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;

int snd_soc_info_volsw_sx(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;

 snd_soc_info_volsw(kcontrol, uinfo);



 uinfo->value.integer.max += mc->min;

 return 0;
}
