
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned long long u64 ;
struct snd_soc_component {int dev; } ;
struct da732x_priv {int pll_en; int sysclk; } ;
typedef unsigned int frac_div ;


 unsigned long long DA732X_1BYTE_SHIFT ;
 unsigned int DA732X_PLL_BYPASS ;
 int DA732X_PLL_EN ;
 int DA732X_REG_PLL_CTRL ;
 int DA732X_REG_PLL_DIV_HI ;
 int DA732X_REG_PLL_DIV_LO ;
 int DA732X_REG_PLL_DIV_MID ;
 int DA732X_SRCCLK_MCLK ;
 unsigned long long DA732X_U8_MASK ;
 int EBUSY ;
 int EINVAL ;
 int da732x_get_input_div (struct snd_soc_component*,int) ;
 int dev_err (int ,char*) ;
 int do_div (unsigned long long,int) ;
 struct da732x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int da732x_set_dai_pll(struct snd_soc_component *component, int pll_id,
         int source, unsigned int freq_in,
         unsigned int freq_out)
{
 struct da732x_priv *da732x = snd_soc_component_get_drvdata(component);
 int fref, indiv;
 u8 div_lo, div_mid, div_hi;
 u64 frac_div;


 if (freq_out == 0) {
  snd_soc_component_update_bits(component, DA732X_REG_PLL_CTRL,
        DA732X_PLL_EN, 0);
  da732x->pll_en = 0;
  return 0;
 }

 if (da732x->pll_en)
  return -EBUSY;

 if (source == DA732X_SRCCLK_MCLK) {

  switch (da732x->sysclk) {
  case 11290000:
  case 12288000:
  case 22580000:
  case 24576000:
  case 45160000:
  case 49152000:
   snd_soc_component_write(component, DA732X_REG_PLL_CTRL,
          DA732X_PLL_BYPASS);
   return 0;
  default:
   dev_err(component->dev,
    "Cannot use PLL Bypass, invalid SYSCLK rate\n");
   return -EINVAL;
  }
 }

 indiv = da732x_get_input_div(component, da732x->sysclk);
 if (indiv < 0)
  return indiv;

 fref = (da732x->sysclk / indiv);
 div_hi = freq_out / fref;
 frac_div = (u64)(freq_out % fref) * 8192ULL;
 do_div(frac_div, fref);
 div_mid = (frac_div >> DA732X_1BYTE_SHIFT) & DA732X_U8_MASK;
 div_lo = (frac_div) & DA732X_U8_MASK;

 snd_soc_component_write(component, DA732X_REG_PLL_DIV_LO, div_lo);
 snd_soc_component_write(component, DA732X_REG_PLL_DIV_MID, div_mid);
 snd_soc_component_write(component, DA732X_REG_PLL_DIV_HI, div_hi);

 snd_soc_component_update_bits(component, DA732X_REG_PLL_CTRL, DA732X_PLL_EN,
       DA732X_PLL_EN);

 da732x->pll_en = 1;

 return 0;
}
