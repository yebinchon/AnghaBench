
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {int * clk; } ;


 size_t CLK_AFE ;
 size_t CLK_I2S1_BCLK_SW ;
 size_t CLK_I2S2_BCLK_SW ;
 size_t CLK_I2S3_BCLK_SW ;
 size_t CLK_I2S4_BCLK_SW ;
 size_t CLK_INFRA_SYS_AUDIO ;
 size_t CLK_MUX_AUDIO ;
 size_t CLK_MUX_AUDIOINTBUS ;
 int clk_disable_unprepare (int ) ;

int mt8183_afe_disable_clock(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;

 clk_disable_unprepare(afe_priv->clk[CLK_I2S4_BCLK_SW]);
 clk_disable_unprepare(afe_priv->clk[CLK_I2S3_BCLK_SW]);
 clk_disable_unprepare(afe_priv->clk[CLK_I2S2_BCLK_SW]);
 clk_disable_unprepare(afe_priv->clk[CLK_I2S1_BCLK_SW]);
 clk_disable_unprepare(afe_priv->clk[CLK_AFE]);
 clk_disable_unprepare(afe_priv->clk[CLK_MUX_AUDIOINTBUS]);
 clk_disable_unprepare(afe_priv->clk[CLK_MUX_AUDIO]);
 clk_disable_unprepare(afe_priv->clk[CLK_INFRA_SYS_AUDIO]);

 return 0;
}
