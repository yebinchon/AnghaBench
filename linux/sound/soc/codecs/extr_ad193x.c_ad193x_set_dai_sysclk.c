
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ad193x_priv {unsigned int sysclk; int regmap; } ;


 int AD193X_PLL_CLK_CTRL1 ;
 int AD193X_PLL_CLK_SRC_MCLK ;
 int AD193X_PLL_DAC_SRC_MCLK ;
 int AD193X_PLL_SRC_MASK ;
 int AD193X_SYSCLK_MCLK ;
 int EINVAL ;
 int SND_SOC_CLOCK_OUT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct ad193x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int ad193x_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct ad193x_priv *ad193x = snd_soc_component_get_drvdata(component);

 if (clk_id == AD193X_SYSCLK_MCLK) {

  if (dir == SND_SOC_CLOCK_OUT || freq != 24576000)
   return -EINVAL;

  regmap_update_bits(ad193x->regmap, AD193X_PLL_CLK_CTRL1,
       AD193X_PLL_SRC_MASK,
       AD193X_PLL_DAC_SRC_MCLK |
       AD193X_PLL_CLK_SRC_MCLK);

  snd_soc_dapm_sync(dapm);
  return 0;
 }
 switch (freq) {
 case 12288000:
 case 18432000:
 case 24576000:
 case 36864000:
  ad193x->sysclk = freq;
  return 0;
 }
 return -EINVAL;
}
