
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;




 int mx27vis_amp_gain ;
 int mx27vis_amp_mute ;

__attribute__((used)) static int mx27vis_amp_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;

 switch (reg) {
 case 129:
  ucontrol->value.integer.value[0] = mx27vis_amp_gain;
  break;
 case 128:
  ucontrol->value.integer.value[0] = mx27vis_amp_mute;
  break;
 }
 return 0;
}
