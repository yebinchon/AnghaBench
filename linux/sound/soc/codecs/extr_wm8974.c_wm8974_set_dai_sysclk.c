
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8974_priv {unsigned int mclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 struct wm8974_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8974_update_clocks (struct snd_soc_dai*) ;

__attribute__((used)) static int wm8974_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
     unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8974_priv *priv = snd_soc_component_get_drvdata(component);

 if (dir != SND_SOC_CLOCK_IN)
  return -EINVAL;

 priv->mclk = freq;

 return wm8974_update_clocks(dai);
}
