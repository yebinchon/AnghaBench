
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5677_priv {int regmap; } ;


 unsigned int RT5677_IF2_ADC_CTRL_MASK ;
 int RT5677_IF2_ADC_MODE_MASK ;
 int RT5677_IF2_ADC_MODE_TDM ;
 int RT5677_TDM2_CTRL1 ;
 int RT5677_TDM2_CTRL2 ;

 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5677_if2_adc_tdm_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int value;

 switch (event) {
 case 128:
  regmap_read(rt5677->regmap, RT5677_TDM2_CTRL2, &value);
  if (value & RT5677_IF2_ADC_CTRL_MASK)
   regmap_update_bits(rt5677->regmap, RT5677_TDM2_CTRL1,
    RT5677_IF2_ADC_MODE_MASK,
    RT5677_IF2_ADC_MODE_TDM);
  break;

 default:
  return 0;
 }

 return 0;
}
