
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_gain_value {int l_gain; int r_gain; int ramp_duration; int mute; } ;
struct sst_gain_mixer_control {int type; struct sst_gain_value* gain_val; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;



 int dev_err (int ,char*,int) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sst_gain_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct sst_gain_mixer_control *mc = (void *)kcontrol->private_value;
 struct sst_gain_value *gv = mc->gain_val;

 switch (mc->type) {
 case 128:
  ucontrol->value.integer.value[0] = gv->l_gain;
  ucontrol->value.integer.value[1] = gv->r_gain;
  break;

 case 130:
  ucontrol->value.integer.value[0] = gv->mute ? 0 : 1;
  break;

 case 129:
  ucontrol->value.integer.value[0] = gv->ramp_duration;
  break;

 default:
  dev_err(component->dev, "Invalid Input- gain type:%d\n",
    mc->type);
  return -EINVAL;
 }

 return 0;
}
