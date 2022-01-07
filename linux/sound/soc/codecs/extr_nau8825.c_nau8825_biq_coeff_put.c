
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
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NAU8825_BIQ_WRT_EN ;
 int NAU8825_REG_BIQ_COF1 ;
 int NAU8825_REG_BIQ_CTRL ;
 int kfree (void*) ;
 void* kmemdup (int ,int ,int) ;
 int regmap_raw_write (int ,int ,void*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int nau8825_biq_coeff_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_bytes_ext *params = (void *)kcontrol->private_value;
 void *data;

 if (!component->regmap)
  return -EINVAL;

 data = kmemdup(ucontrol->value.bytes.data,
  params->max, GFP_KERNEL | GFP_DMA);
 if (!data)
  return -ENOMEM;

 regmap_update_bits(component->regmap, NAU8825_REG_BIQ_CTRL,
  NAU8825_BIQ_WRT_EN, 0);
 regmap_raw_write(component->regmap, NAU8825_REG_BIQ_COF1,
  data, params->max);
 regmap_update_bits(component->regmap, NAU8825_REG_BIQ_CTRL,
  NAU8825_BIQ_WRT_EN, NAU8825_BIQ_WRT_EN);

 kfree(data);
 return 0;
}
