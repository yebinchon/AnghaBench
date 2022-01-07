
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_ZCD_CON0 ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void hp_zcd_disable(struct mt6358_priv *priv)
{
 regmap_write(priv->regmap, MT6358_ZCD_CON0, 0x0000);
}
