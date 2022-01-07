
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8824_fll {int clk_ref_div; int fll_int; int fll_frac; int ratio; int mclk_src; } ;
struct nau8824 {int regmap; int dev; } ;


 int NAU8824_CLK_SRC_MASK ;
 int NAU8824_CLK_SRC_VCO ;
 int NAU8824_REG_CLK_DIVIDER ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int mdelay (int) ;
 int nau8824_calc_fll_param (unsigned int,int,struct nau8824_fll*) ;
 int nau8824_fll_apply (int ,struct nau8824_fll*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8824_set_pll(struct snd_soc_component *component, int pll_id, int source,
  unsigned int freq_in, unsigned int freq_out)
{
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 struct nau8824_fll fll_param;
 int ret, fs;

 fs = freq_out / 256;
 ret = nau8824_calc_fll_param(freq_in, fs, &fll_param);
 if (ret < 0) {
  dev_err(nau8824->dev, "Unsupported input clock %d\n", freq_in);
  return ret;
 }
 dev_dbg(nau8824->dev, "mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\n",
  fll_param.mclk_src, fll_param.ratio, fll_param.fll_frac,
  fll_param.fll_int, fll_param.clk_ref_div);

 nau8824_fll_apply(nau8824->regmap, &fll_param);
 mdelay(2);
 regmap_update_bits(nau8824->regmap, NAU8824_REG_CLK_DIVIDER,
  NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_VCO);

 return 0;
}
