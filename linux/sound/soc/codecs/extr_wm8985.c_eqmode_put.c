
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


 int EINVAL ;
 int WM8985_ADCENL_MASK ;
 int WM8985_ADCENR_MASK ;
 int WM8985_ADDITIONAL_CONTROL ;
 int WM8985_DACENL_MASK ;
 int WM8985_DACENR_MASK ;
 int WM8985_EQ1_LOW_SHELF ;
 unsigned int WM8985_EQ3DMODE ;
 int WM8985_EQ3DMODE_MASK ;
 unsigned int WM8985_EQ3DMODE_SHIFT ;
 unsigned int WM8985_M128ENB ;
 int WM8985_M128ENB_MASK ;
 int WM8985_POWER_MANAGEMENT_2 ;
 int WM8985_POWER_MANAGEMENT_3 ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int eqmode_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned int regpwr2, regpwr3;
 unsigned int reg_eq;

 if (ucontrol->value.enumerated.item[0] != 0
   && ucontrol->value.enumerated.item[0] != 1)
  return -EINVAL;

 reg_eq = snd_soc_component_read32(component, WM8985_EQ1_LOW_SHELF);
 switch ((reg_eq & WM8985_EQ3DMODE) >> WM8985_EQ3DMODE_SHIFT) {
 case 0:
  if (!ucontrol->value.enumerated.item[0])
   return 0;
  break;
 case 1:
  if (ucontrol->value.enumerated.item[0])
   return 0;
  break;
 }

 regpwr2 = snd_soc_component_read32(component, WM8985_POWER_MANAGEMENT_2);
 regpwr3 = snd_soc_component_read32(component, WM8985_POWER_MANAGEMENT_3);

 snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_2,
       WM8985_ADCENR_MASK | WM8985_ADCENL_MASK, 0);
 snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_3,
       WM8985_DACENR_MASK | WM8985_DACENL_MASK, 0);
 snd_soc_component_update_bits(component, WM8985_ADDITIONAL_CONTROL,
       WM8985_M128ENB_MASK, WM8985_M128ENB);

 snd_soc_component_update_bits(component, WM8985_EQ1_LOW_SHELF,
       WM8985_EQ3DMODE_MASK,
       ucontrol->value.enumerated.item[0]
       << WM8985_EQ3DMODE_SHIFT);

 snd_soc_component_write(component, WM8985_POWER_MANAGEMENT_2, regpwr2);
 snd_soc_component_write(component, WM8985_POWER_MANAGEMENT_3, regpwr3);
 return 0;
}
