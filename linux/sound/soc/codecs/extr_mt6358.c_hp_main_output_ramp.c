
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUDDEC_ANA_CON1 ;
 int regmap_update_bits (int ,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hp_main_output_ramp(struct mt6358_priv *priv, bool up)
{
 int i = 0, stage = 0;
 int target = 7;


 for (i = 0; i <= target; i++) {
  stage = up ? i : target - i;
  regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON1,
       0x7 << 8, stage << 8);
  regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON1,
       0x7 << 11, stage << 11);
  usleep_range(100, 150);
 }
}
