
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct TYPE_2__ {scalar_t__* out_mono; } ;
struct arizona {TYPE_1__ pdata; } ;


 int ARIZONA_MAX_OUTPUT ;
 int * arizona_mono_routes ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int *,int) ;

int arizona_init_mono(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 int i;

 for (i = 0; i < ARIZONA_MAX_OUTPUT; ++i) {
  if (arizona->pdata.out_mono[i])
   snd_soc_dapm_add_routes(dapm,
      &arizona_mono_routes[i], 1);
 }

 return 0;
}
