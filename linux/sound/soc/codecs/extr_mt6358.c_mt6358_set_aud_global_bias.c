
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUDDEC_ANA_CON13 ;
 int RG_AUDGLB_PWRDN_VA28_MASK_SFT ;
 int RG_AUDGLB_PWRDN_VA28_SFT ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6358_set_aud_global_bias(struct mt6358_priv *priv, bool enable)
{
 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON13,
      RG_AUDGLB_PWRDN_VA28_MASK_SFT,
      (enable ? 0 : 1) << RG_AUDGLB_PWRDN_VA28_SFT);
 return 0;
}
