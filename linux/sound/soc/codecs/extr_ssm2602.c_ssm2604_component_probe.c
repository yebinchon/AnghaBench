
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int ssm2604_dapm_widgets ;
 int ssm2604_routes ;

__attribute__((used)) static int ssm2604_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int ret;

 ret = snd_soc_dapm_new_controls(dapm, ssm2604_dapm_widgets,
   ARRAY_SIZE(ssm2604_dapm_widgets));
 if (ret)
  return ret;

 return snd_soc_dapm_add_routes(dapm, ssm2604_routes,
   ARRAY_SIZE(ssm2604_routes));
}
