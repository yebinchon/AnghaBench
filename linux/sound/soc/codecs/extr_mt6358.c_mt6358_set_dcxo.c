
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_DCXO_CW14 ;
 int RG_XO_AUDIO_EN_M_SFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt6358_set_dcxo(struct mt6358_priv *priv, bool enable)
{
 regmap_update_bits(priv->regmap, MT6358_DCXO_CW14,
      0x1 << RG_XO_AUDIO_EN_M_SFT,
      (enable ? 1 : 0) << RG_XO_AUDIO_EN_M_SFT);
 return 0;
}
