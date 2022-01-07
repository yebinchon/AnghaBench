
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {int clk_src; unsigned int mclk_rate; int pll_lock; scalar_t__ mclk; } ;




 int DA7219_PLL_CTRL ;
 int DA7219_PLL_MCLK_SQR_EN_MASK ;
 int EINVAL ;
 unsigned int clk_round_rate (scalar_t__,unsigned int) ;
 int clk_set_rate (scalar_t__,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int da7219_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 if ((da7219->clk_src == clk_id) && (da7219->mclk_rate == freq))
  return 0;

 if ((freq < 2000000) || (freq > 54000000)) {
  dev_err(codec_dai->dev, "Unsupported MCLK value %d\n",
   freq);
  return -EINVAL;
 }

 mutex_lock(&da7219->pll_lock);

 switch (clk_id) {
 case 128:
  snd_soc_component_update_bits(component, DA7219_PLL_CTRL,
        DA7219_PLL_MCLK_SQR_EN_MASK,
        DA7219_PLL_MCLK_SQR_EN_MASK);
  break;
 case 129:
  snd_soc_component_update_bits(component, DA7219_PLL_CTRL,
        DA7219_PLL_MCLK_SQR_EN_MASK, 0);
  break;
 default:
  dev_err(codec_dai->dev, "Unknown clock source %d\n", clk_id);
  mutex_unlock(&da7219->pll_lock);
  return -EINVAL;
 }

 da7219->clk_src = clk_id;

 if (da7219->mclk) {
  freq = clk_round_rate(da7219->mclk, freq);
  ret = clk_set_rate(da7219->mclk, freq);
  if (ret) {
   dev_err(codec_dai->dev, "Failed to set clock rate %d\n",
    freq);
   mutex_unlock(&da7219->pll_lock);
   return ret;
  }
 }

 da7219->mclk_rate = freq;

 mutex_unlock(&da7219->pll_lock);

 return 0;
}
