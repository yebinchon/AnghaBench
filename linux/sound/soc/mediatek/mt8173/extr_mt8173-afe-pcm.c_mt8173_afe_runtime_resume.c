
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int * clocks; } ;
struct device {int dummy; } ;


 int AFE_CONN_24BIT ;
 int AFE_CONN_24BIT_O03 ;
 int AFE_CONN_24BIT_O04 ;
 int AFE_DAC_CON0 ;
 int AFE_IRQ_MCU_EN ;
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
 int clk_prepare_enable (int ) ;
 struct mtk_base_afe* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt8173_afe_runtime_resume(struct device *dev)
{
 struct mtk_base_afe *afe = dev_get_drvdata(dev);
 struct mt8173_afe_private *afe_priv = afe->platform_priv;
 int ret;

 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_INFRASYS_AUD]);
 if (ret)
  return ret;

 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD_BUS]);
 if (ret)
  goto err_infra;

 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD]);
 if (ret)
  goto err_top_aud_bus;

 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_BCK0]);
 if (ret)
  goto err_top_aud;

 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_BCK1]);
 if (ret)
  goto err_bck0;
 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_I2S1_M]);
 if (ret)
  goto err_i2s1_m;
 ret = clk_prepare_enable(afe_priv->clocks[MT8173_CLK_I2S2_M]);
 if (ret)
  goto err_i2s2_m;


 regmap_update_bits(afe->regmap, AUDIO_TOP_CON0, AUD_TCON0_PDN_AFE, 0);


 regmap_update_bits(afe->regmap, AFE_CONN_24BIT,
      AFE_CONN_24BIT_O03 | AFE_CONN_24BIT_O04, 0);


 regmap_update_bits(afe->regmap, AFE_IRQ_MCU_EN, 0xff, 0xff);


 regmap_update_bits(afe->regmap, AFE_DAC_CON0, 0x1, 0x1);
 return 0;

err_i2s1_m:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_I2S1_M]);
err_i2s2_m:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_I2S2_M]);
err_bck0:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_BCK0]);
err_top_aud:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD]);
err_top_aud_bus:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD_BUS]);
err_infra:
 clk_disable_unprepare(afe_priv->clocks[MT8173_CLK_INFRASYS_AUD]);
 return ret;
}
