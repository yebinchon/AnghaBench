
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {scalar_t__ master_bias_users; int clk_mclk_users; scalar_t__ clk_type; int regmap; int dev; } ;


 int EINVAL ;
 int WCD9335_ANA_CLK_EXT_CLKBUF_ENABLE ;
 int WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK ;
 int WCD9335_ANA_CLK_MCLK_ENABLE ;
 int WCD9335_ANA_CLK_MCLK_EN_MASK ;
 int WCD9335_ANA_CLK_MCLK_SRC_EXTERNAL ;
 int WCD9335_ANA_CLK_MCLK_SRC_MASK ;
 int WCD9335_ANA_CLK_TOP ;
 int WCD9335_CDC_CLK_RST_CTRL_FS_CNT_CONTROL ;
 int WCD9335_CDC_CLK_RST_CTRL_FS_CNT_ENABLE ;
 int WCD9335_CDC_CLK_RST_CTRL_FS_CNT_EN_MASK ;
 int WCD9335_CDC_CLK_RST_CTRL_MCLK_CONTROL ;
 int WCD9335_CDC_CLK_RST_CTRL_MCLK_ENABLE ;
 int WCD9335_CDC_CLK_RST_CTRL_MCLK_EN_MASK ;
 scalar_t__ WCD_CLK_MCLK ;
 int dev_err (int ,char*,scalar_t__) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wcd9335_enable_mclk(struct wcd9335_codec *wcd)
{

 if (wcd->master_bias_users <= 0)
  return -EINVAL;

 if (((wcd->clk_mclk_users == 0) && (wcd->clk_type == WCD_CLK_MCLK)) ||
     ((wcd->clk_mclk_users > 0) && (wcd->clk_type != WCD_CLK_MCLK))) {
  dev_err(wcd->dev, "Error enabling MCLK, clk_type: %d\n",
   wcd->clk_type);
  return -EINVAL;
 }

 if (++wcd->clk_mclk_users == 1) {
  regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK,
     WCD9335_ANA_CLK_EXT_CLKBUF_ENABLE);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_MCLK_SRC_MASK,
     WCD9335_ANA_CLK_MCLK_SRC_EXTERNAL);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_CLK_TOP,
     WCD9335_ANA_CLK_MCLK_EN_MASK,
     WCD9335_ANA_CLK_MCLK_ENABLE);
  regmap_update_bits(wcd->regmap,
       WCD9335_CDC_CLK_RST_CTRL_FS_CNT_CONTROL,
       WCD9335_CDC_CLK_RST_CTRL_FS_CNT_EN_MASK,
       WCD9335_CDC_CLK_RST_CTRL_FS_CNT_ENABLE);
  regmap_update_bits(wcd->regmap,
       WCD9335_CDC_CLK_RST_CTRL_MCLK_CONTROL,
       WCD9335_CDC_CLK_RST_CTRL_MCLK_EN_MASK,
       WCD9335_CDC_CLK_RST_CTRL_MCLK_ENABLE);




  usleep_range(10, 15);
 }

 wcd->clk_type = WCD_CLK_MCLK;

 return 0;
}
