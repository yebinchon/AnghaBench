
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int MADERA_EP_SEL_MASK ;
 unsigned int MADERA_EP_SEL_SHIFT ;
 int MADERA_OUTPUT_ENABLES_1 ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;

int madera_out1_demux_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_dapm_kcontrol_component(kcontrol);
 unsigned int val;
 int ret;

 ret = snd_soc_component_read(component, MADERA_OUTPUT_ENABLES_1, &val);
 if (ret)
  return ret;

 val &= MADERA_EP_SEL_MASK;
 val >>= MADERA_EP_SEL_SHIFT;
 ucontrol->value.enumerated.item[0] = val;

 return 0;
}
