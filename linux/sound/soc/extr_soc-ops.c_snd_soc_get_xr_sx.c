
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mreg_control {unsigned int regbase; unsigned int regcount; unsigned int invert; unsigned long nbits; long min; long max; } ;
struct snd_soc_component {unsigned int val_bytes; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int BITS_PER_BYTE ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;

int snd_soc_get_xr_sx(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_mreg_control *mc =
  (struct soc_mreg_control *)kcontrol->private_value;
 unsigned int regbase = mc->regbase;
 unsigned int regcount = mc->regcount;
 unsigned int regwshift = component->val_bytes * BITS_PER_BYTE;
 unsigned int regwmask = (1<<regwshift)-1;
 unsigned int invert = mc->invert;
 unsigned long mask = (1UL<<mc->nbits)-1;
 long min = mc->min;
 long max = mc->max;
 long val = 0;
 unsigned int regval;
 unsigned int i;
 int ret;

 for (i = 0; i < regcount; i++) {
  ret = snd_soc_component_read(component, regbase+i, &regval);
  if (ret)
   return ret;
  val |= (regval & regwmask) << (regwshift*(regcount-i-1));
 }
 val &= mask;
 if (min < 0 && val > max)
  val |= ~mask;
 if (invert)
  val = max - val;
 ucontrol->value.integer.value[0] = val;

 return 0;
}
