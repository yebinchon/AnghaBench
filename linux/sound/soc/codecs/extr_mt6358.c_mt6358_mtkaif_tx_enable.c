
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int mtkaif_protocol; int regmap; } ;


 int MT6358_AFE_ADDA_MTKAIF_CFG0 ;
 int MT6358_AFE_AUD_PAD_TOP ;



 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt6358_mtkaif_tx_enable(struct mt6358_priv *priv)
{
 switch (priv->mtkaif_protocol) {
 case 128:

  regmap_update_bits(priv->regmap,
       MT6358_AFE_ADDA_MTKAIF_CFG0,
       0xffff, 0x0010);

  regmap_update_bits(priv->regmap,
       MT6358_AFE_AUD_PAD_TOP,
       0xff00, 0x3800);
  regmap_update_bits(priv->regmap,
       MT6358_AFE_AUD_PAD_TOP,
       0xff00, 0x3900);
  break;
 case 129:

  regmap_update_bits(priv->regmap,
       MT6358_AFE_ADDA_MTKAIF_CFG0,
       0xffff, 0x0010);

  regmap_update_bits(priv->regmap,
       MT6358_AFE_AUD_PAD_TOP,
       0xff00, 0x3100);
  break;
 case 130:
 default:

  regmap_update_bits(priv->regmap,
       MT6358_AFE_ADDA_MTKAIF_CFG0,
       0xffff, 0x0000);

  regmap_update_bits(priv->regmap,
       MT6358_AFE_AUD_PAD_TOP,
       0xff00, 0x3100);
  break;
 }
 return 0;
}
