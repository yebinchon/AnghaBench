
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct cs53l30_private {scalar_t__ use_sdout2; } ;


 int ARRAY_SIZE (int ) ;
 int cs53l30_dapm_routes_sdout1 ;
 int cs53l30_dapm_routes_sdout2 ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int cs53l30_component_probe(struct snd_soc_component *component)
{
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (priv->use_sdout2)
  snd_soc_dapm_add_routes(dapm, cs53l30_dapm_routes_sdout2,
     ARRAY_SIZE(cs53l30_dapm_routes_sdout2));
 else
  snd_soc_dapm_add_routes(dapm, cs53l30_dapm_routes_sdout1,
     ARRAY_SIZE(cs53l30_dapm_routes_sdout1));

 return 0;
}
