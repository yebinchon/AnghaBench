
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_bytes {int num_regs; int base; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int regmap; int dev; } ;
typedef int __be16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 unsigned int MADERA_EQ1_B1_MODE ;
 int cpu_to_be16 (unsigned int) ;
 int dev_err (int ,char*) ;
 int kfree (int *) ;
 int * kmemdup (int ,int,int) ;
 scalar_t__ madera_eq_filter_unstable (int,int ,int ) ;
 int regmap_get_val_bytes (int ) ;
 int regmap_raw_write (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

int madera_eq_coeff_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 struct soc_bytes *params = (void *)kcontrol->private_value;
 unsigned int val;
 __be16 *data;
 int len;
 int ret;

 len = params->num_regs * regmap_get_val_bytes(madera->regmap);

 data = kmemdup(ucontrol->value.bytes.data, len, GFP_KERNEL | GFP_DMA);
 if (!data)
  return -ENOMEM;

 data[0] &= cpu_to_be16(MADERA_EQ1_B1_MODE);

 if (madera_eq_filter_unstable(!!data[0], data[1], data[2]) ||
     madera_eq_filter_unstable(1, data[4], data[5]) ||
     madera_eq_filter_unstable(1, data[8], data[9]) ||
     madera_eq_filter_unstable(1, data[12], data[13]) ||
     madera_eq_filter_unstable(0, data[16], data[17])) {
  dev_err(madera->dev, "Rejecting unstable EQ coefficients\n");
  ret = -EINVAL;
  goto out;
 }

 ret = regmap_read(madera->regmap, params->base, &val);
 if (ret != 0)
  goto out;

 val &= ~MADERA_EQ1_B1_MODE;
 data[0] |= cpu_to_be16(val);

 ret = regmap_raw_write(madera->regmap, params->base, data, len);

out:
 kfree(data);

 return ret;
}
