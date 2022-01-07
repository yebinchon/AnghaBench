
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5677_priv {int is_vref_slow; int regmap; } ;


 int RT5677_PWR_ANLG1 ;
 int RT5677_PWR_FV1 ;
 int RT5677_PWR_FV2 ;
 int SND_SOC_BIAS_ON ;

 int mdelay (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5677_vref_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (snd_soc_component_get_bias_level(component) != SND_SOC_BIAS_ON &&
   !rt5677->is_vref_slow) {
   mdelay(20);
   regmap_update_bits(rt5677->regmap, RT5677_PWR_ANLG1,
    RT5677_PWR_FV1 | RT5677_PWR_FV2,
    RT5677_PWR_FV1 | RT5677_PWR_FV2);
   rt5677->is_vref_slow = 1;
  }
  break;

 default:
  return 0;
 }

 return 0;
}
