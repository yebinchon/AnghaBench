
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {scalar_t__ clk_mclk_users; scalar_t__ clk_rco_users; int regmap; int clk_type; } ;


 int EINVAL ;
 int WCD9335_ANA_CLK_EXT_CLKBUF_DISABLE ;
 int WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK ;
 int WCD9335_ANA_CLK_MCLK_DISABLE ;
 int WCD9335_ANA_CLK_MCLK_EN_MASK ;
 int WCD9335_ANA_CLK_MCLK_SRC_MASK ;
 int WCD9335_ANA_CLK_MCLK_SRC_RCO ;
 int WCD9335_ANA_CLK_TOP ;
 int WCD_CLK_OFF ;
 int WCD_CLK_RCO ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int wcd9335_disable_mclk(struct wcd9335_codec *wcd)
{
 if (wcd->clk_mclk_users <= 0)
  return -EINVAL;

 if (--wcd->clk_mclk_users == 0) {
  if (wcd->clk_rco_users > 0) {

   regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_MCLK_SRC_MASK,
     WCD9335_ANA_CLK_MCLK_SRC_RCO);
   wcd->clk_type = WCD_CLK_RCO;
  } else {
   regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_MCLK_EN_MASK,
     WCD9335_ANA_CLK_MCLK_DISABLE);
   wcd->clk_type = WCD_CLK_OFF;
  }

  regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK,
     WCD9335_ANA_CLK_EXT_CLKBUF_DISABLE);
 }

 return 0;
}
