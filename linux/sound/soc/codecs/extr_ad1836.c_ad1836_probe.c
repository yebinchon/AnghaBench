
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct ad1836_priv {size_t type; int regmap; } ;
struct TYPE_5__ {int channels_max; } ;
struct TYPE_4__ {int channels_max; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;


 size_t AD1836 ;
 int AD1836_ADC_CTRL1 ;
 int AD1836_ADC_CTRL2 ;
 int AD1836_ADC_CTRL3 ;
 int AD1836_DAC_CTRL1 ;
 int AD1836_DAC_CTRL2 ;
 int AD1836_DAC_L_VOL (int) ;
 int AD1836_DAC_R_VOL (int) ;
 int ARRAY_SIZE (int ) ;
 int ad1836_controls ;
 int ad183x_adc_controls ;
 int ad183x_adc_dapm_widgets ;
 int ad183x_adc_routes ;
 int ad183x_dac_controls ;
 int ad183x_dac_dapm_widgets ;
 int ad183x_dac_routes ;
 TYPE_3__* ad183x_dais ;
 int regmap_write (int ,int ,int) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct ad1836_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int) ;

__attribute__((used)) static int ad1836_probe(struct snd_soc_component *component)
{
 struct ad1836_priv *ad1836 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int num_dacs, num_adcs;
 int ret = 0;
 int i;

 num_dacs = ad183x_dais[ad1836->type].playback.channels_max / 2;
 num_adcs = ad183x_dais[ad1836->type].capture.channels_max / 2;



 regmap_write(ad1836->regmap, AD1836_DAC_CTRL1, 0x300);

 regmap_write(ad1836->regmap, AD1836_DAC_CTRL2, 0x0);

 regmap_write(ad1836->regmap, AD1836_ADC_CTRL1, 0x100);

 regmap_write(ad1836->regmap, AD1836_ADC_CTRL2, 0x180);

 for (i = 1; i <= num_dacs; ++i) {
  regmap_write(ad1836->regmap, AD1836_DAC_L_VOL(i), 0x3FF);
  regmap_write(ad1836->regmap, AD1836_DAC_R_VOL(i), 0x3FF);
 }

 if (ad1836->type == AD1836) {

  regmap_write(ad1836->regmap, AD1836_ADC_CTRL3, 0x3A);
  ret = snd_soc_add_component_controls(component, ad1836_controls,
    ARRAY_SIZE(ad1836_controls));
  if (ret)
   return ret;
 } else {
  regmap_write(ad1836->regmap, AD1836_ADC_CTRL3, 0x00);
 }

 ret = snd_soc_add_component_controls(component, ad183x_dac_controls, num_dacs * 2);
 if (ret)
  return ret;

 ret = snd_soc_add_component_controls(component, ad183x_adc_controls, num_adcs);
 if (ret)
  return ret;

 ret = snd_soc_dapm_new_controls(dapm, ad183x_dac_dapm_widgets, num_dacs);
 if (ret)
  return ret;

 ret = snd_soc_dapm_new_controls(dapm, ad183x_adc_dapm_widgets, num_adcs);
 if (ret)
  return ret;

 ret = snd_soc_dapm_add_routes(dapm, ad183x_dac_routes, num_dacs);
 if (ret)
  return ret;

 ret = snd_soc_dapm_add_routes(dapm, ad183x_adc_routes, num_adcs);
 if (ret)
  return ret;

 return ret;
}
