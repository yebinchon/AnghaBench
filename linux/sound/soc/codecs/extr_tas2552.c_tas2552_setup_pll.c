
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas2552_data {unsigned int pll_clkin; int pll_clk_id; scalar_t__ tdm_delay; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int TAS2552_CFG_1 ;
 int TAS2552_CFG_2 ;
 int TAS2552_PLL_BYPASS ;
 int TAS2552_PLL_CLKIN_1_8_FIXED ;
 int TAS2552_PLL_CLKIN_BCLK ;
 int TAS2552_PLL_CTRL_1 ;
 int TAS2552_PLL_CTRL_2 ;
 int TAS2552_PLL_CTRL_3 ;
 int TAS2552_PLL_D_LOWER (unsigned int) ;
 int TAS2552_PLL_D_UPPER (unsigned int) ;
 int TAS2552_PLL_ENABLE ;
 int TAS2552_PLL_J_MASK ;
 int TAS2552_PLL_SRC_MASK ;
 struct tas2552_data* dev_get_drvdata (int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 unsigned int snd_soc_params_to_bclk (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int tas2552_setup_pll(struct snd_soc_component *component,
        struct snd_pcm_hw_params *params)
{
 struct tas2552_data *tas2552 = dev_get_drvdata(component->dev);
 bool bypass_pll = 0;
 unsigned int pll_clk = params_rate(params) * 512;
 unsigned int pll_clkin = tas2552->pll_clkin;
 u8 pll_enable;

 if (!pll_clkin) {
  if (tas2552->pll_clk_id != TAS2552_PLL_CLKIN_BCLK)
   return -EINVAL;

  pll_clkin = snd_soc_params_to_bclk(params);
  pll_clkin += tas2552->tdm_delay;
 }

 pll_enable = snd_soc_component_read32(component, TAS2552_CFG_2) & TAS2552_PLL_ENABLE;
 snd_soc_component_update_bits(component, TAS2552_CFG_2, TAS2552_PLL_ENABLE, 0);

 if (pll_clkin == pll_clk)
  bypass_pll = 1;

 if (bypass_pll) {

  snd_soc_component_update_bits(component, TAS2552_PLL_CTRL_2,
        TAS2552_PLL_BYPASS, TAS2552_PLL_BYPASS);
 } else {




  unsigned int d, q, t;
  u8 j;
  u8 pll_sel = (tas2552->pll_clk_id << 3) & TAS2552_PLL_SRC_MASK;
  u8 p = snd_soc_component_read32(component, TAS2552_PLL_CTRL_1);

  p = (p >> 7);

recalc:
  t = (pll_clk * 2) << p;
  j = t / pll_clkin;
  d = t % pll_clkin;
  t = pll_clkin / 10000;
  q = d / (t + 1);
  d = q + ((9999 - pll_clkin % 10000) * (d / t - q)) / 10000;

  if (d && (pll_clkin < 512000 || pll_clkin > 9200000)) {
   if (tas2552->pll_clk_id == TAS2552_PLL_CLKIN_BCLK) {
    pll_clkin = 1800000;
    pll_sel = (TAS2552_PLL_CLKIN_1_8_FIXED << 3) &
       TAS2552_PLL_SRC_MASK;
   } else {
    pll_clkin = snd_soc_params_to_bclk(params);
    pll_clkin += tas2552->tdm_delay;
    pll_sel = (TAS2552_PLL_CLKIN_BCLK << 3) &
       TAS2552_PLL_SRC_MASK;
   }
   goto recalc;
  }

  snd_soc_component_update_bits(component, TAS2552_CFG_1, TAS2552_PLL_SRC_MASK,
        pll_sel);

  snd_soc_component_update_bits(component, TAS2552_PLL_CTRL_1,
        TAS2552_PLL_J_MASK, j);

  snd_soc_component_write(component, TAS2552_PLL_CTRL_2,
         TAS2552_PLL_D_UPPER(d));
  snd_soc_component_write(component, TAS2552_PLL_CTRL_3,
         TAS2552_PLL_D_LOWER(d));
 }


 snd_soc_component_update_bits(component, TAS2552_CFG_2, TAS2552_PLL_ENABLE,
       pll_enable);

 return 0;
}
