
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int DA732X_HPF_DIS ;

 int DA732X_HPF_MASK ;

 unsigned int DA732X_HPF_MUSIC_EN ;

 unsigned int DA732X_HPF_VOICE_EN ;
 int EINVAL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int da732x_hpf_set(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct soc_enum *enum_ctrl = (struct soc_enum *)kcontrol->private_value;
 unsigned int reg = enum_ctrl->reg;
 unsigned int sel = ucontrol->value.enumerated.item[0];
 unsigned int bits;

 switch (sel) {
 case 130:
  bits = DA732X_HPF_DIS;
  break;
 case 128:
  bits = DA732X_HPF_VOICE_EN;
  break;
 case 129:
  bits = DA732X_HPF_MUSIC_EN;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, reg, DA732X_HPF_MASK, bits);

 return 0;
}
