
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; int invert; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;

int snd_soc_get_strobe(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;
 unsigned int shift = mc->shift;
 unsigned int mask = 1 << shift;
 unsigned int invert = mc->invert != 0;
 unsigned int val;
 int ret;

 ret = snd_soc_component_read(component, reg, &val);
 if (ret)
  return ret;

 val &= mask;

 if (shift != 0 && val != 0)
  val = val >> shift;
 ucontrol->value.enumerated.item[0] = val ^ invert;

 return 0;
}
