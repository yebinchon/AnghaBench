
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct nau8822_pll {int mclk_scaler; } ;
struct nau8822 {int div_id; int sysclk; struct nau8822_pll pll; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int NAU8822_CLKM_MASK ;
 int NAU8822_CLKM_MCLK ;
 int NAU8822_CLKM_PLL ;


 int NAU8822_MCLKSEL_MASK ;
 int NAU8822_MCLKSEL_SFT ;
 int NAU8822_REG_CLOCKING ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*) ;
 int* nau8822_mclk_scaler ;
 struct nau8822* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int nau8822_config_clkdiv(struct snd_soc_dai *dai, int div, int rate)
{
 struct snd_soc_component *component = dai->component;
 struct nau8822 *nau8822 = snd_soc_component_get_drvdata(component);
 struct nau8822_pll *pll = &nau8822->pll;
 int i, sclk, imclk;

 switch (nau8822->div_id) {
 case 129:




  div = 0;
  imclk = rate * 256;
  for (i = 1; i < ARRAY_SIZE(nau8822_mclk_scaler); i++) {
   sclk = (nau8822->sysclk * 10) / nau8822_mclk_scaler[i];
   if (sclk < imclk)
    break;
   div = i;
  }
  dev_dbg(component->dev, "master clock prescaler %x for fs %d\n",
   div, rate);


  snd_soc_component_update_bits(component,
   NAU8822_REG_CLOCKING, NAU8822_MCLKSEL_MASK,
   (div << NAU8822_MCLKSEL_SFT));
  snd_soc_component_update_bits(component,
   NAU8822_REG_CLOCKING, NAU8822_CLKM_MASK,
   NAU8822_CLKM_MCLK);
  break;

 case 128:

  if (pll->mclk_scaler != div) {
   dev_err(component->dev,
   "master clock prescaler not meet PLL parameters\n");
   return -EINVAL;
  }
  snd_soc_component_update_bits(component,
   NAU8822_REG_CLOCKING, NAU8822_MCLKSEL_MASK,
   (div << NAU8822_MCLKSEL_SFT));
  snd_soc_component_update_bits(component,
   NAU8822_REG_CLOCKING, NAU8822_CLKM_MASK,
   NAU8822_CLKM_PLL);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
