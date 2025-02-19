
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs43130_private {int pll_bypass; int regmap; int mclk_int; int mclk; } ;
struct cs43130_pll_params {scalar_t__ pll_cal_ratio; int pll_div_frac; scalar_t__ pll_div_int; scalar_t__ pll_divout; int pll_mode; scalar_t__ sclk_prediv; } ;


 int CS43130_PLL_DIV_DATA_MASK ;
 int CS43130_PLL_DIV_FRAC_0_DATA_SHIFT ;
 int CS43130_PLL_DIV_FRAC_1_DATA_SHIFT ;
 int CS43130_PLL_DIV_FRAC_2_DATA_SHIFT ;
 int CS43130_PLL_MODE_MASK ;
 int CS43130_PLL_MODE_SHIFT ;
 int CS43130_PLL_SET_1 ;
 int CS43130_PLL_SET_2 ;
 int CS43130_PLL_SET_3 ;
 int CS43130_PLL_SET_4 ;
 int CS43130_PLL_SET_5 ;
 int CS43130_PLL_SET_6 ;
 int CS43130_PLL_SET_7 ;
 int CS43130_PLL_SET_8 ;
 int CS43130_PLL_SET_9 ;
 int CS43130_PLL_START_MASK ;
 int EINVAL ;
 struct cs43130_pll_params* cs43130_get_pll_table (int ,int ) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,scalar_t__) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_pll_config(struct snd_soc_component *component)
{
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);
 const struct cs43130_pll_params *pll_entry;

 dev_dbg(component->dev, "cs43130->mclk = %u, cs43130->mclk_int = %u\n",
  cs43130->mclk, cs43130->mclk_int);

 pll_entry = cs43130_get_pll_table(cs43130->mclk, cs43130->mclk_int);
 if (!pll_entry)
  return -EINVAL;

 if (pll_entry->pll_cal_ratio == 0) {
  regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_1,
       CS43130_PLL_START_MASK, 0);

  cs43130->pll_bypass = 1;
  return 0;
 }

 cs43130->pll_bypass = 0;

 regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_2,
      CS43130_PLL_DIV_DATA_MASK,
      pll_entry->pll_div_frac >>
      CS43130_PLL_DIV_FRAC_0_DATA_SHIFT);
 regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_3,
      CS43130_PLL_DIV_DATA_MASK,
      pll_entry->pll_div_frac >>
      CS43130_PLL_DIV_FRAC_1_DATA_SHIFT);
 regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_4,
      CS43130_PLL_DIV_DATA_MASK,
      pll_entry->pll_div_frac >>
      CS43130_PLL_DIV_FRAC_2_DATA_SHIFT);
 regmap_write(cs43130->regmap, CS43130_PLL_SET_5,
       pll_entry->pll_div_int);
 regmap_write(cs43130->regmap, CS43130_PLL_SET_6, pll_entry->pll_divout);
 regmap_write(cs43130->regmap, CS43130_PLL_SET_7,
       pll_entry->pll_cal_ratio);
 regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_8,
      CS43130_PLL_MODE_MASK,
      pll_entry->pll_mode << CS43130_PLL_MODE_SHIFT);
 regmap_write(cs43130->regmap, CS43130_PLL_SET_9,
       pll_entry->sclk_prediv);
 regmap_update_bits(cs43130->regmap, CS43130_PLL_SET_1,
      CS43130_PLL_START_MASK, 1);

 return 0;
}
