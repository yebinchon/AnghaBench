
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUDDEC_ANA_CON4 ;
 int regmap_update_bits (int ,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hp_pull_down(struct mt6358_priv *priv, bool enable)
{
 int i;

 if (enable) {
  for (i = 0x0; i <= 0x6; i++) {
   regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON4,
        0x7, i);
   usleep_range(600, 700);
  }
 } else {
  for (i = 0x6; i >= 0x1; i--) {
   regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON4,
        0x7, i);
   usleep_range(600, 700);
  }
 }
}
