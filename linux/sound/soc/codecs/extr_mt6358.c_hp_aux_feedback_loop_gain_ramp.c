
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_AUDDEC_ANA_CON9 ;
 int regmap_update_bits (int ,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hp_aux_feedback_loop_gain_ramp(struct mt6358_priv *priv, bool up)
{
 int i = 0, stage = 0;


 for (i = 0; i <= 0xf; i++) {
  stage = up ? i : 0xf - i;
  regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON9,
       0xf << 12, stage << 12);
  usleep_range(100, 150);
 }
}
