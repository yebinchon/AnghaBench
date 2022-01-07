
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; int * ana_gain; } ;


 size_t AUDIO_ANALOG_VOLUME_HPOUTL ;
 int DL_GAIN_N_40DB ;
 int DL_GAIN_N_40DB_REG ;
 int DL_GAIN_REG_MASK ;
 int MT6358_AUDDEC_ANA_CON0 ;
 int MT6358_AUDDEC_ANA_CON1 ;
 int MT6358_AUDDEC_ANA_CON12 ;
 int MT6358_AUDDEC_ANA_CON13 ;
 int MT6358_AUDDEC_ANA_CON14 ;
 int MT6358_AUDDEC_ANA_CON15 ;
 int MT6358_AUDDEC_ANA_CON4 ;
 int MT6358_AUDDEC_ANA_CON7 ;
 int MT6358_AUDDEC_ANA_CON9 ;
 int MT6358_AUDNCP_CLKDIV_CON3 ;
 int MT6358_ZCD_CON1 ;
 int headset_volume_ramp (struct mt6358_priv*,int ,int ) ;
 int hp_aux_feedback_loop_gain_ramp (struct mt6358_priv*,int) ;
 int hp_main_output_ramp (struct mt6358_priv*,int) ;
 int hp_pull_down (struct mt6358_priv*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mtk_hp_spk_disable(struct mt6358_priv *priv)
{

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      0x0f00, 0x0000);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON7,
      0x3 << 2, 0x0000);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      0x000f, 0x0000);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON13, 0x1, 0x0);


 headset_volume_ramp(priv,
       priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL],
       DL_GAIN_N_40DB);


 regmap_update_bits(priv->regmap, MT6358_ZCD_CON1,
      DL_GAIN_REG_MASK, DL_GAIN_N_40DB_REG);


 hp_main_output_ramp(priv, 0);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3, 0x0);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fc3);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fcf);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fff);


 hp_aux_feedback_loop_gain_ramp(priv, 0);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      0x3 << 4, 0x0);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON7,
      0x1, 0x0);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
      0x3 << 6, 0x0);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON7,
      0x1 << 1, 0x0);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON9,
      0xff << 8, 0x0000);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON12,
      0x1 << 8, 0x1 << 8);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON15, 0x1, 0x0);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON14, 0x1055, 0x0);

 regmap_update_bits(priv->regmap, MT6358_AUDNCP_CLKDIV_CON3, 0x1, 0x1);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON4,
      0x1 << 6, 0x0);

 hp_pull_down(priv, 0);

 return 0;
}
