
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {int * clk; } ;


 int AFE_22M_ON_MASK_SFT ;
 int AFE_22M_ON_SFT ;
 int AFE_APLL1_TUNER_CFG ;
 int AFE_HD_ENGEN_ENABLE ;
 size_t CLK_APLL1_TUNER ;
 size_t CLK_APLL22M ;
 int apll1_mux_setting (struct mtk_base_afe*,int) ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

void mt8183_apll1_disable(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;

 regmap_update_bits(afe->regmap, AFE_HD_ENGEN_ENABLE,
      AFE_22M_ON_MASK_SFT,
      0x0 << AFE_22M_ON_SFT);

 regmap_update_bits(afe->regmap, AFE_APLL1_TUNER_CFG, 0x1, 0x0);

 clk_disable_unprepare(afe_priv->clk[CLK_APLL1_TUNER]);
 clk_disable_unprepare(afe_priv->clk[CLK_APLL22M]);

 apll1_mux_setting(afe, 0);
}
