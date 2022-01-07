
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUDENC_ANA_CON6 ;
 int RG_CLKSQ_EN_MASK_SFT ;
 int RG_CLKSQ_EN_SFT ;
 int RG_CLKSQ_IN_SEL_TEST_MASK_SFT ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6358_set_clksq(struct mt6358_priv *priv, bool enable)
{

 regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON6,
      RG_CLKSQ_IN_SEL_TEST_MASK_SFT,
      0x0);


 regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON6,
      RG_CLKSQ_EN_MASK_SFT,
      (enable ? 1 : 0) << RG_CLKSQ_EN_SFT);
 return 0;
}
