
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5677_priv {int regmap; } ;


 int RT5677_PWR_ANLG2 ;
 int RT5677_PWR_CLK_MB ;
 int RT5677_PWR_CLK_MB1 ;
 int RT5677_PWR_PP_MB1 ;


 int regmap_update_bits (int ,int ,int,int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5677_set_micbias1_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:
  regmap_update_bits(rt5677->regmap, RT5677_PWR_ANLG2,
   RT5677_PWR_CLK_MB1 | RT5677_PWR_PP_MB1 |
   RT5677_PWR_CLK_MB, RT5677_PWR_CLK_MB1 |
   RT5677_PWR_PP_MB1 | RT5677_PWR_CLK_MB);
  break;

 case 128:
  regmap_update_bits(rt5677->regmap, RT5677_PWR_ANLG2,
   RT5677_PWR_CLK_MB1 | RT5677_PWR_PP_MB1 |
   RT5677_PWR_CLK_MB, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
