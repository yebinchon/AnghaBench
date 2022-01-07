
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {unsigned int pll_in; unsigned int pll_out; int regvalue; } ;


 int ALC5623_DAI_CONTROL ;
 int ALC5623_DAI_SDP_SLAVE_MODE ;
 int ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK ;
 int ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL ;
 int ALC5623_GLOBAL_CLK_CTRL_REG ;
 int ALC5623_PLL_CTRL ;


 int ALC5623_PWR_ADD2_PLL ;
 int ALC5623_PWR_MANAG_ADD2 ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENODEV ;
 TYPE_1__* codec_master_pll_div ;
 TYPE_1__* codec_slave_pll_div ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int alc5623_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 int i;
 struct snd_soc_component *component = codec_dai->component;
 int gbl_clk = 0, pll_div = 0;
 u16 reg;

 if (pll_id < 128 || pll_id > 129)
  return -ENODEV;


 snd_soc_component_update_bits(component, ALC5623_PWR_MANAG_ADD2,
    ALC5623_PWR_ADD2_PLL,
    0);


 reg = snd_soc_component_read32(component, ALC5623_DAI_CONTROL);
 if (reg & ALC5623_DAI_SDP_SLAVE_MODE)
  return 0;

 if (!freq_in || !freq_out)
  return 0;

 switch (pll_id) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(codec_master_pll_div); i++) {
   if (codec_master_pll_div[i].pll_in == freq_in
      && codec_master_pll_div[i].pll_out == freq_out) {

    pll_div = codec_master_pll_div[i].regvalue;
    break;
   }
  }
  break;
 case 129:
  for (i = 0; i < ARRAY_SIZE(codec_slave_pll_div); i++) {
   if (codec_slave_pll_div[i].pll_in == freq_in
      && codec_slave_pll_div[i].pll_out == freq_out) {

    gbl_clk = ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK;
    pll_div = codec_slave_pll_div[i].regvalue;
    break;
   }
  }
  break;
 default:
  return -EINVAL;
 }

 if (!pll_div)
  return -EINVAL;

 snd_soc_component_write(component, ALC5623_GLOBAL_CLK_CTRL_REG, gbl_clk);
 snd_soc_component_write(component, ALC5623_PLL_CTRL, pll_div);
 snd_soc_component_update_bits(component, ALC5623_PWR_MANAG_ADD2,
    ALC5623_PWR_ADD2_PLL,
    ALC5623_PWR_ADD2_PLL);
 gbl_clk |= ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL;
 snd_soc_component_write(component, ALC5623_GLOBAL_CLK_CTRL_REG, gbl_clk);

 return 0;
}
