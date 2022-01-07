
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct nau8825_fll {int clk_ref_div; int fll_int; int fll_frac; int ratio; int mclk_src; } ;
struct nau8825 {int regmap; } ;


 int NAU8825_CLK_SRC_MASK ;
 int NAU8825_CLK_SRC_VCO ;
 int NAU8825_REG_CLK_DIVIDER ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int mdelay (int) ;
 int nau8825_calc_fll_param (unsigned int,int,struct nau8825_fll*) ;
 int nau8825_fll_apply (struct nau8825*,struct nau8825_fll*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8825* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8825_set_pll(struct snd_soc_component *component, int pll_id, int source,
  unsigned int freq_in, unsigned int freq_out)
{
 struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);
 struct nau8825_fll fll_param;
 int ret, fs;

 fs = freq_out / 256;
 ret = nau8825_calc_fll_param(freq_in, fs, &fll_param);
 if (ret < 0) {
  dev_err(component->dev, "Unsupported input clock %d\n", freq_in);
  return ret;
 }
 dev_dbg(component->dev, "mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\n",
  fll_param.mclk_src, fll_param.ratio, fll_param.fll_frac,
  fll_param.fll_int, fll_param.clk_ref_div);

 nau8825_fll_apply(nau8825, &fll_param);
 mdelay(2);
 regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
   NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_VCO);
 return 0;
}
