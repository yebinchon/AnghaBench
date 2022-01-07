
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
struct nau8810 {int regmap; } ;
typedef int reg_val ;


 int NAU8810_REG_EQ1 ;
 int cpu_to_be16 (int) ;
 int memcpy (int *,int*,int) ;
 int regmap_read (int ,int,int*) ;
 struct nau8810* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int nau8810_eq_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct nau8810 *nau8810 = snd_soc_component_get_drvdata(component);
 struct soc_bytes_ext *params = (void *)kcontrol->private_value;
 int i, reg, reg_val;
 u16 *val;

 val = (u16 *)ucontrol->value.bytes.data;
 reg = NAU8810_REG_EQ1;
 for (i = 0; i < params->max / sizeof(u16); i++) {
  regmap_read(nau8810->regmap, reg + i, &reg_val);



  reg_val = cpu_to_be16(reg_val);
  memcpy(val + i, &reg_val, sizeof(reg_val));
 }

 return 0;
}
