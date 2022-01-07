
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int * clocks; } ;
struct device {int dummy; } ;


 int AFE_DAC_CON0 ;
 int AUDIO_TOP_CON0 ;
 int AUD_TCON0_PDN_AFE ;
 size_t MT8173_CLK_BCK0 ;
 size_t MT8173_CLK_BCK1 ;
 size_t MT8173_CLK_I2S1_M ;
 size_t MT8173_CLK_I2S2_M ;
 size_t MT8173_CLK_INFRASYS_AUD ;
 size_t MT8173_CLK_TOP_PDN_AUD ;
 size_t MT8173_CLK_TOP_PDN_AUD_BUS ;
 int clk_disable_unprepare (int ) ;
 struct mtk_base_afe* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt8173_afe_runtime_suspend(struct device *dev)
{
 struct mtk_base_afe *afe = dev_get_drvdata(dev);
 struct mt8173_afe_private *afe_priv = afe->platform_priv;


 regmap_update_bits(afe->regmap, AFE_DAC_CON0, 0x1, 0);


 regmap_update_bits(afe->regmap, AUDIO_TOP_CON0,
      AUD_TCON0_PDN_AFE, AUD_TCON0_PDN_AFE);

 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_I2S1_M]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_I2S2_M]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_BCK0]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_BCK1]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD_BUS]);
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_INFRASYS_AUD]);
 return 0;
}
