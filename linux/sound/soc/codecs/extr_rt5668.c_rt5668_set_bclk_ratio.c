
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct rt5668_priv {unsigned int* bclk; } ;


 int EINVAL ;
 int RT5668_ADDA_CLK_2 ;
 int RT5668_I2S2_BCLK_MS2_32 ;
 int RT5668_I2S2_BCLK_MS2_64 ;
 int RT5668_I2S2_BCLK_MS2_MASK ;
 int dev_err (int ,char*,unsigned int) ;
 struct rt5668_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int rt5668_set_bclk_ratio(struct snd_soc_dai *dai, unsigned int ratio)
{
 struct snd_soc_component *component = dai->component;
 struct rt5668_priv *rt5668 = snd_soc_component_get_drvdata(component);

 rt5668->bclk[dai->id] = ratio;

 switch (ratio) {
 case 64:
  snd_soc_component_update_bits(component, RT5668_ADDA_CLK_2,
   RT5668_I2S2_BCLK_MS2_MASK,
   RT5668_I2S2_BCLK_MS2_64);
  break;
 case 32:
  snd_soc_component_update_bits(component, RT5668_ADDA_CLK_2,
   RT5668_I2S2_BCLK_MS2_MASK,
   RT5668_I2S2_BCLK_MS2_32);
  break;
 default:
  dev_err(dai->dev, "Invalid bclk ratio %d\n", ratio);
  return -EINVAL;
 }

 return 0;
}
