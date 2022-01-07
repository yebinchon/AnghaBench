
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct arizona* arizona; } ;
struct wm8998_priv {TYPE_1__ core; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona {int regmap; struct snd_soc_dapm_context* dapm; } ;


 int arizona_init_gpio (struct snd_soc_component*) ;
 int arizona_init_spk (struct snd_soc_component*) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8998_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int wm8998_component_probe(struct snd_soc_component *component)
{
 struct wm8998_priv *priv = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct arizona *arizona = priv->core.arizona;
 int ret;

 arizona->dapm = dapm;
 snd_soc_component_init_regmap(component, arizona->regmap);

 ret = arizona_init_spk(component);
 if (ret < 0)
  return ret;

 arizona_init_gpio(component);

 snd_soc_component_disable_pin(component, "HAPTICS");

 return 0;
}
