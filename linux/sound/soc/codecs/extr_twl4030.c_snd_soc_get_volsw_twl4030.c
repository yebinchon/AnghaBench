
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; unsigned int rshift; int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int fls (int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 unsigned int twl4030_read (struct snd_soc_component*,unsigned int) ;

__attribute__((used)) static int snd_soc_get_volsw_twl4030(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned int reg = mc->reg;
 unsigned int shift = mc->shift;
 unsigned int rshift = mc->rshift;
 int max = mc->max;
 int mask = (1 << fls(max)) - 1;

 ucontrol->value.integer.value[0] =
  (twl4030_read(component, reg) >> shift) & mask;
 if (ucontrol->value.integer.value[0])
  ucontrol->value.integer.value[0] =
   max + 1 - ucontrol->value.integer.value[0];

 if (shift != rshift) {
  ucontrol->value.integer.value[1] =
   (twl4030_read(component, reg) >> rshift) & mask;
  if (ucontrol->value.integer.value[1])
   ucontrol->value.integer.value[1] =
    max + 1 - ucontrol->value.integer.value[1];
 }

 return 0;
}
