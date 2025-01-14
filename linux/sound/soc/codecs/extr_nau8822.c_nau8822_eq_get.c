
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
typedef int reg_val ;


 int NAU8822_REG_EQ1 ;
 int cpu_to_be16 (int ) ;
 int memcpy (int *,int *,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int nau8822_eq_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
   snd_soc_kcontrol_component(kcontrol);
 struct soc_bytes_ext *params = (void *)kcontrol->private_value;
 int i, reg;
 u16 reg_val, *val;

 val = (u16 *)ucontrol->value.bytes.data;
 reg = NAU8822_REG_EQ1;
 for (i = 0; i < params->max / sizeof(u16); i++) {
  reg_val = snd_soc_component_read32(component, reg + i);



  reg_val = cpu_to_be16(reg_val);
  memcpy(val + i, &reg_val, sizeof(reg_val));
 }

 return 0;
}
