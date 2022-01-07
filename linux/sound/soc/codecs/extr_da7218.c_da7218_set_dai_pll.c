
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned long long u64 ;
typedef unsigned int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct da7218_priv {int mclk_rate; } ;
typedef unsigned int frac_div ;


 unsigned long long DA7218_BYTE_MASK ;
 unsigned long long DA7218_BYTE_SHIFT ;
 int DA7218_PLL_CTRL ;
 int DA7218_PLL_FRAC_BOT ;
 int DA7218_PLL_FRAC_TOP ;
 unsigned int DA7218_PLL_INDIV_18_TO_36_MHZ ;
 unsigned int DA7218_PLL_INDIV_18_TO_36_MHZ_VAL ;
 unsigned int DA7218_PLL_INDIV_2_TO_4_5_MHZ ;
 unsigned int DA7218_PLL_INDIV_2_TO_4_5_MHZ_VAL ;
 unsigned int DA7218_PLL_INDIV_36_TO_54_MHZ ;
 unsigned int DA7218_PLL_INDIV_36_TO_54_MHZ_VAL ;
 unsigned int DA7218_PLL_INDIV_4_5_TO_9_MHZ ;
 unsigned int DA7218_PLL_INDIV_4_5_TO_9_MHZ_VAL ;
 unsigned int DA7218_PLL_INDIV_9_TO_18_MHZ ;
 unsigned int DA7218_PLL_INDIV_9_TO_18_MHZ_VAL ;
 int DA7218_PLL_INDIV_MASK ;
 int DA7218_PLL_INTEGER ;
 unsigned int DA7218_PLL_MODE_BYPASS ;
 int DA7218_PLL_MODE_MASK ;
 unsigned int DA7218_PLL_MODE_NORMAL ;
 unsigned int DA7218_PLL_MODE_SRM ;



 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int do_div (unsigned long long,unsigned int) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int da7218_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
         int source, unsigned int fref, unsigned int fout)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);

 u8 pll_ctrl, indiv_bits, indiv;
 u8 pll_frac_top, pll_frac_bot, pll_integer;
 u32 freq_ref;
 u64 frac_div;


 if (da7218->mclk_rate < 2000000) {
  dev_err(component->dev, "PLL input clock %d below valid range\n",
   da7218->mclk_rate);
  return -EINVAL;
 } else if (da7218->mclk_rate <= 4500000) {
  indiv_bits = DA7218_PLL_INDIV_2_TO_4_5_MHZ;
  indiv = DA7218_PLL_INDIV_2_TO_4_5_MHZ_VAL;
 } else if (da7218->mclk_rate <= 9000000) {
  indiv_bits = DA7218_PLL_INDIV_4_5_TO_9_MHZ;
  indiv = DA7218_PLL_INDIV_4_5_TO_9_MHZ_VAL;
 } else if (da7218->mclk_rate <= 18000000) {
  indiv_bits = DA7218_PLL_INDIV_9_TO_18_MHZ;
  indiv = DA7218_PLL_INDIV_9_TO_18_MHZ_VAL;
 } else if (da7218->mclk_rate <= 36000000) {
  indiv_bits = DA7218_PLL_INDIV_18_TO_36_MHZ;
  indiv = DA7218_PLL_INDIV_18_TO_36_MHZ_VAL;
 } else if (da7218->mclk_rate <= 54000000) {
  indiv_bits = DA7218_PLL_INDIV_36_TO_54_MHZ;
  indiv = DA7218_PLL_INDIV_36_TO_54_MHZ_VAL;
 } else {
  dev_err(component->dev, "PLL input clock %d above valid range\n",
   da7218->mclk_rate);
  return -EINVAL;
 }
 freq_ref = (da7218->mclk_rate / indiv);
 pll_ctrl = indiv_bits;


 switch (source) {
 case 130:
  pll_ctrl |= DA7218_PLL_MODE_BYPASS;
  snd_soc_component_update_bits(component, DA7218_PLL_CTRL,
        DA7218_PLL_INDIV_MASK |
        DA7218_PLL_MODE_MASK, pll_ctrl);
  return 0;
 case 129:
  pll_ctrl |= DA7218_PLL_MODE_NORMAL;
  break;
 case 128:
  pll_ctrl |= DA7218_PLL_MODE_SRM;
  break;
 default:
  dev_err(component->dev, "Invalid PLL config\n");
  return -EINVAL;
 }


 pll_integer = fout / freq_ref;
 frac_div = (u64)(fout % freq_ref) * 8192ULL;
 do_div(frac_div, freq_ref);
 pll_frac_top = (frac_div >> DA7218_BYTE_SHIFT) & DA7218_BYTE_MASK;
 pll_frac_bot = (frac_div) & DA7218_BYTE_MASK;


 snd_soc_component_write(component, DA7218_PLL_FRAC_TOP, pll_frac_top);
 snd_soc_component_write(component, DA7218_PLL_FRAC_BOT, pll_frac_bot);
 snd_soc_component_write(component, DA7218_PLL_INTEGER, pll_integer);
 snd_soc_component_update_bits(component, DA7218_PLL_CTRL,
       DA7218_PLL_MODE_MASK | DA7218_PLL_INDIV_MASK,
       pll_ctrl);

 return 0;
}
