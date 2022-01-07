
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int LM49453_P0_PMC_SETUP_REG ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int lm49453_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
      unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 u16 pll_clk = 0;

 switch (freq) {
 case 12288000:
 case 26000000:
 case 19200000:

  pll_clk = 0;
  break;
 case 48000:
 case 32576:

  pll_clk = BIT(4);
  return 0;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, LM49453_P0_PMC_SETUP_REG, BIT(4), pll_clk);

 return 0;
}
