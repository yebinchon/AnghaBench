
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct regmap {int dummy; } ;
struct aud96p22_priv {struct regmap* regmap; } ;


 int AUD96P22_RESET ;
 int EINVAL ;
 int RST_DAC_DPZ ;
 int SND_SOC_DAPM_POST_PMU ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct aud96p22_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int aud96p22_dac_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct aud96p22_priv *priv = snd_soc_component_get_drvdata(component);
 struct regmap *regmap = priv->regmap;

 if (event != SND_SOC_DAPM_POST_PMU)
  return -EINVAL;


 regmap_update_bits(regmap, AUD96P22_RESET, RST_DAC_DPZ, 0);
 regmap_update_bits(regmap, AUD96P22_RESET, RST_DAC_DPZ, RST_DAC_DPZ);

 return 0;
}
