
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5651_priv {struct snd_soc_component* component; } ;


 int RT5651_PWR_ANLG1 ;
 int RT5651_PWR_LDO_DVO_1_2V ;
 int RT5651_PWR_LDO_DVO_MASK ;
 int SND_SOC_BIAS_OFF ;
 int rt5651_apply_properties (struct snd_soc_component*) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int rt5651_probe(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 rt5651->component = component;

 snd_soc_component_update_bits(component, RT5651_PWR_ANLG1,
  RT5651_PWR_LDO_DVO_MASK, RT5651_PWR_LDO_DVO_1_2V);

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);

 rt5651_apply_properties(component);

 return 0;
}
