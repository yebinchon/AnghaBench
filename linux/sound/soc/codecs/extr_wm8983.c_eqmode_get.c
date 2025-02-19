
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM8983_EQ1_LOW_SHELF ;
 unsigned int WM8983_EQ3DMODE ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int eqmode_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned int reg;

 reg = snd_soc_component_read32(component, WM8983_EQ1_LOW_SHELF);
 if (reg & WM8983_EQ3DMODE)
  ucontrol->value.enumerated.item[0] = 1;
 else
  ucontrol->value.enumerated.item[0] = 0;

 return 0;
}
