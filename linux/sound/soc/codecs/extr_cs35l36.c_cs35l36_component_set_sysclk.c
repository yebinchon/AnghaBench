
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs35l36_private {int clksrc; scalar_t__ rev_id; int regmap; scalar_t__ ldm_mode_sel; } ;
struct cs35l36_pll_config {int clk_cfg; int fll_igain; } ;


 int CS35L36_DAC_MSM_CFG ;
 int CS35L36_DCO_CTRL ;
 int CS35L36_MISC_CTRL ;
 int CS35L36_NG_CFG ;
 int CS35L36_NG_DELAY_MASK ;
 int CS35L36_NG_DELAY_SHIFT ;
 int CS35L36_PDM_MODE_MASK ;
 int CS35L36_PDM_MODE_SHIFT ;
 int CS35L36_PLLSRC_LRCLK ;
 int CS35L36_PLLSRC_MCLK ;
 int CS35L36_PLLSRC_PDMCLK ;
 int CS35L36_PLLSRC_SCLK ;
 int CS35L36_PLLSRC_SELF ;
 int CS35L36_PLL_CLK_CTRL ;
 int CS35L36_PLL_CLK_SEL_MASK ;
 int CS35L36_PLL_FFL_IGAIN_MASK ;
 int CS35L36_PLL_IGAIN ;
 int CS35L36_PLL_IGAIN_MASK ;
 int CS35L36_PLL_IGAIN_SHIFT ;
 int CS35L36_PLL_LOOP_PARAMS ;
 int CS35L36_PLL_OPENLOOP_MASK ;
 int CS35L36_PLL_OPENLOOP_SHIFT ;
 int CS35L36_PLL_REFCLK_EN_MASK ;
 int CS35L36_PLL_REFCLK_EN_SHIFT ;
 int CS35L36_REFCLK_FREQ_MASK ;
 int CS35L36_REFCLK_FREQ_SHIFT ;
 scalar_t__ CS35L36_REV_A0 ;
 int CS35L36_TESTKEY_CTRL ;
 int CS35L36_TEST_LOCK1 ;
 int CS35L36_TEST_LOCK2 ;
 int CS35L36_TEST_UNLOCK1 ;
 int CS35L36_TEST_UNLOCK2 ;
 int EINVAL ;
 struct cs35l36_pll_config* cs35l36_get_clk_config (struct cs35l36_private*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 struct cs35l36_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l36_component_set_sysclk(struct snd_soc_component *component,
    int clk_id, int source, unsigned int freq,
    int dir)
{
 struct cs35l36_private *cs35l36 =
   snd_soc_component_get_drvdata(component);
 const struct cs35l36_pll_config *clk_cfg;
 int prev_clksrc;
 bool pdm_switch;

 prev_clksrc = cs35l36->clksrc;

 switch (clk_id) {
 case 0:
  cs35l36->clksrc = CS35L36_PLLSRC_SCLK;
  break;
 case 1:
  cs35l36->clksrc = CS35L36_PLLSRC_LRCLK;
  break;
 case 2:
  cs35l36->clksrc = CS35L36_PLLSRC_PDMCLK;
  break;
 case 3:
  cs35l36->clksrc = CS35L36_PLLSRC_SELF;
  break;
 case 4:
  cs35l36->clksrc = CS35L36_PLLSRC_MCLK;
  break;
 default:
  return -EINVAL;
 }

 clk_cfg = cs35l36_get_clk_config(cs35l36, freq);
 if (clk_cfg == ((void*)0)) {
  dev_err(component->dev, "Invalid CLK Config Freq: %d\n", freq);
  return -EINVAL;
 }

 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_PLL_OPENLOOP_MASK,
      1 << CS35L36_PLL_OPENLOOP_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_REFCLK_FREQ_MASK,
      clk_cfg->clk_cfg << CS35L36_REFCLK_FREQ_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_PLL_REFCLK_EN_MASK,
      0 << CS35L36_PLL_REFCLK_EN_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_PLL_CLK_SEL_MASK,
      cs35l36->clksrc);
 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_PLL_OPENLOOP_MASK,
      0 << CS35L36_PLL_OPENLOOP_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_PLL_CLK_CTRL,
      CS35L36_PLL_REFCLK_EN_MASK,
      1 << CS35L36_PLL_REFCLK_EN_SHIFT);

 if (cs35l36->rev_id == CS35L36_REV_A0) {
  regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
        CS35L36_TEST_UNLOCK1);
  regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
        CS35L36_TEST_UNLOCK2);

  regmap_write(cs35l36->regmap, CS35L36_DCO_CTRL, 0x00036DA8);
  regmap_write(cs35l36->regmap, CS35L36_MISC_CTRL, 0x0100EE0E);

  regmap_update_bits(cs35l36->regmap, CS35L36_PLL_LOOP_PARAMS,
       CS35L36_PLL_IGAIN_MASK,
       CS35L36_PLL_IGAIN <<
       CS35L36_PLL_IGAIN_SHIFT);
  regmap_update_bits(cs35l36->regmap, CS35L36_PLL_LOOP_PARAMS,
       CS35L36_PLL_FFL_IGAIN_MASK,
       clk_cfg->fll_igain);

  regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
        CS35L36_TEST_LOCK1);
  regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
        CS35L36_TEST_LOCK2);
 }

 if (cs35l36->clksrc == CS35L36_PLLSRC_PDMCLK) {
  pdm_switch = cs35l36->ldm_mode_sel &&
        (prev_clksrc != CS35L36_PLLSRC_PDMCLK);

  if (pdm_switch)
   regmap_update_bits(cs35l36->regmap, CS35L36_NG_CFG,
        CS35L36_NG_DELAY_MASK,
        0 << CS35L36_NG_DELAY_SHIFT);

  regmap_update_bits(cs35l36->regmap, CS35L36_DAC_MSM_CFG,
       CS35L36_PDM_MODE_MASK,
       1 << CS35L36_PDM_MODE_SHIFT);

  if (pdm_switch)
   regmap_update_bits(cs35l36->regmap, CS35L36_NG_CFG,
        CS35L36_NG_DELAY_MASK,
        3 << CS35L36_NG_DELAY_SHIFT);
 } else {
  pdm_switch = cs35l36->ldm_mode_sel &&
        (prev_clksrc == CS35L36_PLLSRC_PDMCLK);

  if (pdm_switch)
   regmap_update_bits(cs35l36->regmap, CS35L36_NG_CFG,
        CS35L36_NG_DELAY_MASK,
        0 << CS35L36_NG_DELAY_SHIFT);

  regmap_update_bits(cs35l36->regmap, CS35L36_DAC_MSM_CFG,
       CS35L36_PDM_MODE_MASK,
       0 << CS35L36_PDM_MODE_SHIFT);

  if (pdm_switch)
   regmap_update_bits(cs35l36->regmap, CS35L36_NG_CFG,
        CS35L36_NG_DELAY_MASK,
        3 << CS35L36_NG_DELAY_SHIFT);
 }

 return 0;
}
