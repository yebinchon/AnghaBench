
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int regmap; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int LOUT1V_LRHP_BOTH ;
 int ROUT1V_RLHP_BOTH ;
 int SSM2602_LOUT1V ;
 int SSM2602_ROUT1V ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int ssm2602_dapm_widgets ;
 int ssm2602_routes ;
 int ssm2602_snd_controls ;

__attribute__((used)) static int ssm2602_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(component);
 int ret;

 regmap_update_bits(ssm2602->regmap, SSM2602_LOUT1V,
       LOUT1V_LRHP_BOTH, LOUT1V_LRHP_BOTH);
 regmap_update_bits(ssm2602->regmap, SSM2602_ROUT1V,
       ROUT1V_RLHP_BOTH, ROUT1V_RLHP_BOTH);

 ret = snd_soc_add_component_controls(component, ssm2602_snd_controls,
   ARRAY_SIZE(ssm2602_snd_controls));
 if (ret)
  return ret;

 ret = snd_soc_dapm_new_controls(dapm, ssm2602_dapm_widgets,
   ARRAY_SIZE(ssm2602_dapm_widgets));
 if (ret)
  return ret;

 return snd_soc_dapm_add_routes(dapm, ssm2602_routes,
   ARRAY_SIZE(ssm2602_routes));
}
