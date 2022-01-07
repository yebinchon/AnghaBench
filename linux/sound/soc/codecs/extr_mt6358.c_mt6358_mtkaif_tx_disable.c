
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AFE_AUD_PAD_TOP ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt6358_mtkaif_tx_disable(struct mt6358_priv *priv)
{

 regmap_update_bits(priv->regmap, MT6358_AFE_AUD_PAD_TOP,
      0xff00, 0x3000);
 return 0;
}
