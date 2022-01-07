
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825_fll {int mclk_src; int ratio; int fll_int; int clk_ref_div; scalar_t__ fll_frac; } ;
struct nau8825 {int regmap; } ;


 int NAU8825_CLK_MCLK_SRC_MASK ;
 int NAU8825_CLK_SRC_MASK ;
 int NAU8825_CLK_SRC_MCLK ;
 int NAU8825_CUTOFF500 ;
 int NAU8825_DCO_EN ;
 int NAU8825_FLL_CLK_SW_MASK ;
 int NAU8825_FLL_CLK_SW_REF ;
 int NAU8825_FLL_FTR_SW_ACCU ;
 int NAU8825_FLL_FTR_SW_FILTER ;
 int NAU8825_FLL_FTR_SW_MASK ;
 int NAU8825_FLL_INTEGER_MASK ;
 int NAU8825_FLL_LOOP_FTR_EN ;
 int NAU8825_FLL_PDB_DAC_EN ;
 int NAU8825_FLL_RATIO_MASK ;
 int NAU8825_FLL_REF_DIV_MASK ;
 int NAU8825_FLL_REF_DIV_SFT ;
 int NAU8825_ICTRL_LATCH_MASK ;
 int NAU8825_ICTRL_LATCH_SFT ;
 int NAU8825_REG_CLK_DIVIDER ;
 int NAU8825_REG_FLL1 ;
 int NAU8825_REG_FLL2 ;
 int NAU8825_REG_FLL3 ;
 int NAU8825_REG_FLL4 ;
 int NAU8825_REG_FLL5 ;
 int NAU8825_REG_FLL6 ;
 int NAU8825_SDM_EN ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void nau8825_fll_apply(struct nau8825 *nau8825,
  struct nau8825_fll *fll_param)
{
 regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
  NAU8825_CLK_SRC_MASK | NAU8825_CLK_MCLK_SRC_MASK,
  NAU8825_CLK_SRC_MCLK | fll_param->mclk_src);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL1,
  NAU8825_FLL_RATIO_MASK | NAU8825_ICTRL_LATCH_MASK,
  fll_param->ratio | (0x6 << NAU8825_ICTRL_LATCH_SFT));

 regmap_write(nau8825->regmap, NAU8825_REG_FLL2, fll_param->fll_frac);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL3,
   NAU8825_FLL_INTEGER_MASK, fll_param->fll_int);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL4,
   NAU8825_FLL_REF_DIV_MASK,
   fll_param->clk_ref_div << NAU8825_FLL_REF_DIV_SFT);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL5,
  NAU8825_FLL_CLK_SW_MASK, NAU8825_FLL_CLK_SW_REF);

 regmap_update_bits(nau8825->regmap,
  NAU8825_REG_FLL6, NAU8825_DCO_EN, 0);
 if (fll_param->fll_frac) {

  regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL5,
   NAU8825_FLL_PDB_DAC_EN | NAU8825_FLL_LOOP_FTR_EN |
   NAU8825_FLL_FTR_SW_MASK,
   NAU8825_FLL_PDB_DAC_EN | NAU8825_FLL_LOOP_FTR_EN |
   NAU8825_FLL_FTR_SW_FILTER);
  regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL6,
   NAU8825_SDM_EN | NAU8825_CUTOFF500,
   NAU8825_SDM_EN | NAU8825_CUTOFF500);
 } else {

  regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL5,
   NAU8825_FLL_PDB_DAC_EN | NAU8825_FLL_LOOP_FTR_EN |
   NAU8825_FLL_FTR_SW_MASK, NAU8825_FLL_FTR_SW_ACCU);
  regmap_update_bits(nau8825->regmap, NAU8825_REG_FLL6,
   NAU8825_SDM_EN | NAU8825_CUTOFF500, 0);
 }
}
