
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4642_priv {TYPE_1__* drvdata; } ;
struct TYPE_2__ {int extended_frequencies; } ;


 int EINVAL ;
 int MD_CTL1 ;
 int PLL0 ;
 int PLL1 ;
 int PLL2 ;
 int PLL3 ;
 int PLL_MASK ;
 struct ak4642_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int ak4642_dai_set_sysclk(struct snd_soc_dai *codec_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct ak4642_priv *priv = snd_soc_component_get_drvdata(component);
 u8 pll;
 int extended_freq = 0;

 switch (freq) {
 case 11289600:
  pll = PLL2;
  break;
 case 12288000:
  pll = PLL2 | PLL0;
  break;
 case 12000000:
  pll = PLL2 | PLL1;
  break;
 case 24000000:
  pll = PLL2 | PLL1 | PLL0;
  break;
 case 13500000:
  pll = PLL3 | PLL2;
  break;
 case 27000000:
  pll = PLL3 | PLL2 | PLL0;
  break;
 case 19200000:
  pll = PLL3;
  extended_freq = 1;
  break;
 case 13000000:
  pll = PLL3 | PLL2 | PLL1;
  extended_freq = 1;
  break;
 case 26000000:
  pll = PLL3 | PLL2 | PLL1 | PLL0;
  extended_freq = 1;
  break;
 default:
  return -EINVAL;
 }

 if (extended_freq && !priv->drvdata->extended_frequencies)
  return -EINVAL;

 snd_soc_component_update_bits(component, MD_CTL1, PLL_MASK, pll);

 return 0;
}
