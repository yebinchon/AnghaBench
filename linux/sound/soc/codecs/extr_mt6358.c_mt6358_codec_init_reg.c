
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_ACCDET_CON13 ;
 int MT6358_AUDDEC_ANA_CON0 ;
 int MT6358_AUDDEC_ANA_CON6 ;
 int MT6358_AUDDEC_ANA_CON7 ;
 int MT6358_DRV_CON3 ;
 int RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT ;
 int RG_AUDHPLSCDISABLE_VAUDP15_SFT ;
 int RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT ;
 int RG_AUDHPRSCDISABLE_VAUDP15_SFT ;
 int RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT ;
 int RG_AUDHSSCDISABLE_VAUDP15_SFT ;
 int RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT ;
 int RG_AUDLOLSCDISABLE_VAUDP15_SFT ;
 int capture_gpio_reset (struct mt6358_priv*) ;
 int playback_gpio_reset (struct mt6358_priv*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void mt6358_codec_init_reg(struct mt6358_priv *priv)
{

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT,
      0x1 << RG_AUDHPLSCDISABLE_VAUDP15_SFT);
 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT,
      0x1 << RG_AUDHPRSCDISABLE_VAUDP15_SFT);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON6,
      RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT,
      0x1 << RG_AUDHSSCDISABLE_VAUDP15_SFT);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON7,
      RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT,
      0x1 << RG_AUDLOLSCDISABLE_VAUDP15_SFT);


 regmap_update_bits(priv->regmap, MT6358_ACCDET_CON13,
      0xFFFF, 0x700E);


 regmap_write(priv->regmap, MT6358_DRV_CON3, 0x8888);


 playback_gpio_reset(priv);
 capture_gpio_reset(priv);
}
