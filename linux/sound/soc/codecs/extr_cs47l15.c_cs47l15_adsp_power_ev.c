
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int dev; int regmap; } ;
struct cs47l15 {struct madera_priv core; } ;


 int MADERA_DSP_CLOCK_2 ;

 int dev_err (int ,char*,int) ;
 int madera_set_adsp_clk (struct madera_priv*,int ,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct cs47l15* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm_adsp_early_event (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;

__attribute__((used)) static int cs47l15_adsp_power_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol,
     int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);
 struct cs47l15 *cs47l15 = snd_soc_component_get_drvdata(component);
 struct madera_priv *priv = &cs47l15->core;
 struct madera *madera = priv->madera;
 unsigned int freq;
 int ret;

 ret = regmap_read(madera->regmap, MADERA_DSP_CLOCK_2, &freq);
 if (ret != 0) {
  dev_err(madera->dev,
   "Failed to read MADERA_DSP_CLOCK_2: %d\n", ret);
  return ret;
 }

 switch (event) {
 case 128:
  ret = madera_set_adsp_clk(&cs47l15->core, w->shift, freq);
  if (ret)
   return ret;
  break;
 default:
  break;
 }

 return wm_adsp_early_event(w, kcontrol, event);
}
