
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUD_TOP_CKPDN_CON0 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt6358_set_topck(struct mt6358_priv *priv, bool enable)
{
 regmap_update_bits(priv->regmap, MT6358_AUD_TOP_CKPDN_CON0,
      0x0066, enable ? 0x0 : 0x66);
 return 0;
}
