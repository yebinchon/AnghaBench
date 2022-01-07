
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int regmap; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int NAU8825_REG_BIQ_COF1 ;
 int regmap_raw_read (int ,int ,int ,int ) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int nau8825_biq_coeff_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_bytes_ext *params = (void *)kcontrol->private_value;

 if (!component->regmap)
  return -EINVAL;

 regmap_raw_read(component->regmap, NAU8825_REG_BIQ_COF1,
  ucontrol->value.bytes.data, params->max);
 return 0;
}
