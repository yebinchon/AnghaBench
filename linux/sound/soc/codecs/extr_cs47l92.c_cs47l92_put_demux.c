
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_enum {int items; unsigned int shift_l; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct TYPE_7__ {int* out_mono; } ;
struct TYPE_8__ {TYPE_3__ codec; } ;
struct madera {int dev; int regmap; TYPE_4__ pdata; } ;
struct cs47l92 {struct madera_priv core; } ;


 int EINVAL ;
 unsigned int MADERA_EP_SEL ;
 int MADERA_EP_SEL_MASK ;
 unsigned int MADERA_OUT3L_ENA ;
 unsigned int MADERA_OUT3R_ENA ;
 int MADERA_OUTPUT_ENABLES_1 ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int madera_set_output_mode (struct snd_soc_component*,int,int) ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs47l92* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_test_bits (struct snd_soc_component*,int ,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mux_update_power (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs47l92_put_demux(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_dapm_kcontrol_component(kcontrol);
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(component);
 struct cs47l92 *cs47l92 = snd_soc_component_get_drvdata(component);
 struct madera_priv *priv = &cs47l92->core;
 struct madera *madera = priv->madera;
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int ep_sel, mux, change, cur;
 bool out_mono;
 int ret;

 if (ucontrol->value.enumerated.item[0] > e->items - 1)
  return -EINVAL;

 mux = ucontrol->value.enumerated.item[0];

 snd_soc_dapm_mutex_lock(dapm);

 ep_sel = mux << e->shift_l;

 change = snd_soc_component_test_bits(component, MADERA_OUTPUT_ENABLES_1,
          MADERA_EP_SEL_MASK,
          ep_sel);
 if (!change)
  goto end;

 ret = regmap_read(madera->regmap, MADERA_OUTPUT_ENABLES_1, &cur);
 if (ret != 0)
  dev_warn(madera->dev, "Failed to read outputs: %d\n", ret);


 ret = regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1,
     MADERA_OUT3L_ENA | MADERA_OUT3R_ENA, 0);
 if (ret)
  dev_warn(madera->dev, "Failed to disable outputs: %d\n", ret);

 usleep_range(2000, 3000);

 ret = regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1,
     MADERA_EP_SEL, ep_sel);
 if (ret) {
  dev_err(madera->dev, "Failed to set OUT3 demux: %d\n", ret);
 } else {
  out_mono = madera->pdata.codec.out_mono[2 + mux];

  ret = madera_set_output_mode(component, 3, out_mono);
  if (ret < 0)
   dev_warn(madera->dev,
     "Failed to set output mode: %d\n", ret);
 }

 ret = regmap_update_bits(madera->regmap, MADERA_OUTPUT_ENABLES_1,
     MADERA_OUT3L_ENA | MADERA_OUT3R_ENA, cur);
 if (ret) {
  dev_warn(madera->dev, "Failed to restore outputs: %d\n", ret);
 } else {

  if (cur & (MADERA_OUT3L_ENA | MADERA_OUT3R_ENA))
   msleep(34);
  else
   usleep_range(2000, 3000);
 }

end:
 snd_soc_dapm_mutex_unlock(dapm);

 return snd_soc_dapm_mux_update_power(dapm, kcontrol, mux, e, ((void*)0));
}
