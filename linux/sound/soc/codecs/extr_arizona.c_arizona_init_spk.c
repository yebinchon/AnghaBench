
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int type; } ;





 int arizona_spkl ;
 int arizona_spkr ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int *,int) ;

int arizona_init_spk(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 int ret;

 ret = snd_soc_dapm_new_controls(dapm, &arizona_spkl, 1);
 if (ret != 0)
  return ret;

 switch (arizona->type) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  ret = snd_soc_dapm_new_controls(dapm, &arizona_spkr, 1);
  if (ret != 0)
   return ret;
  break;
 }

 return 0;
}
