
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ long_name; scalar_t__ jd_mode; } ;
struct rt5645_priv {int codec_type; int v_id; int eq_param; TYPE_2__ pdata; struct snd_soc_component* component; } ;
struct rt5645_eq_param_s {int dummy; } ;
struct TYPE_3__ {scalar_t__ long_name; } ;


 int ARRAY_SIZE (int ) ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RT5645_HWEQ_NUM ;
 int SND_SOC_BIAS_OFF ;
 int devm_kcalloc (int ,int ,int,int ) ;
 int rt5645_old_dapm_routes ;
 int rt5645_specific_dapm_routes ;
 int rt5645_specific_dapm_widgets ;
 int rt5650_specific_dapm_routes ;
 int rt5650_specific_dapm_widgets ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5645_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int rt5645_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5645_priv *rt5645 = snd_soc_component_get_drvdata(component);

 rt5645->component = component;

 switch (rt5645->codec_type) {
 case 129:
  snd_soc_dapm_new_controls(dapm,
   rt5645_specific_dapm_widgets,
   ARRAY_SIZE(rt5645_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5645_specific_dapm_routes,
   ARRAY_SIZE(rt5645_specific_dapm_routes));
  if (rt5645->v_id < 3) {
   snd_soc_dapm_add_routes(dapm,
    rt5645_old_dapm_routes,
    ARRAY_SIZE(rt5645_old_dapm_routes));
  }
  break;
 case 128:
  snd_soc_dapm_new_controls(dapm,
   rt5650_specific_dapm_widgets,
   ARRAY_SIZE(rt5650_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5650_specific_dapm_routes,
   ARRAY_SIZE(rt5650_specific_dapm_routes));
  break;
 }

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);


 if (rt5645->pdata.jd_mode) {
  snd_soc_dapm_force_enable_pin(dapm, "JD Power");
  snd_soc_dapm_force_enable_pin(dapm, "LDO2");
  snd_soc_dapm_sync(dapm);
 }

 if (rt5645->pdata.long_name)
  component->card->long_name = rt5645->pdata.long_name;

 rt5645->eq_param = devm_kcalloc(component->dev,
  RT5645_HWEQ_NUM, sizeof(struct rt5645_eq_param_s),
  GFP_KERNEL);

 if (!rt5645->eq_param)
  return -ENOMEM;

 return 0;
}
