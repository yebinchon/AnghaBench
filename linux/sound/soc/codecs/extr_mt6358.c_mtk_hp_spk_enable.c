
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int* ana_gain; int regmap; } ;


 size_t AUDIO_ANALOG_VOLUME_HPOUTL ;
 size_t AUDIO_ANALOG_VOLUME_LINEOUTL ;
 size_t AUDIO_ANALOG_VOLUME_LINEOUTR ;
 int DL_GAIN_N_10DB ;
 int DL_GAIN_N_10DB_REG ;
 int DL_GAIN_N_40DB_REG ;
 int MT6358_AUDDEC_ANA_CON0 ;
 int MT6358_AUDDEC_ANA_CON1 ;
 int MT6358_AUDDEC_ANA_CON10 ;
 int MT6358_AUDDEC_ANA_CON11 ;
 int MT6358_AUDDEC_ANA_CON12 ;
 int MT6358_AUDDEC_ANA_CON13 ;
 int MT6358_AUDDEC_ANA_CON14 ;
 int MT6358_AUDDEC_ANA_CON15 ;
 int MT6358_AUDDEC_ANA_CON2 ;
 int MT6358_AUDDEC_ANA_CON4 ;
 int MT6358_AUDDEC_ANA_CON7 ;
 int MT6358_AUDDEC_ANA_CON9 ;
 int MT6358_AUDNCP_CLKDIV_CON0 ;
 int MT6358_AUDNCP_CLKDIV_CON1 ;
 int MT6358_AUDNCP_CLKDIV_CON2 ;
 int MT6358_AUDNCP_CLKDIV_CON3 ;
 int MT6358_AUDNCP_CLKDIV_CON4 ;
 int MT6358_ZCD_CON1 ;
 int MT6358_ZCD_CON2 ;
 int RG_AUDLOLGAIN_MASK_SFT ;
 int RG_AUDLOLGAIN_SFT ;
 int RG_AUDLORGAIN_MASK_SFT ;
 int RG_AUDLORGAIN_SFT ;
 int headset_volume_ramp (struct mt6358_priv*,int ,int) ;
 int hp_main_output_ramp (struct mt6358_priv*,int) ;
 int hp_pull_down (struct mt6358_priv*,int) ;
 int hp_zcd_disable (struct mt6358_priv*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mtk_hp_spk_enable(struct mt6358_priv *priv)
{

 hp_pull_down(priv, 1);

 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON4,
      0x1 << 6, 0x1 << 6);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4000);


 regmap_write(priv->regmap, MT6358_ZCD_CON2, DL_GAIN_N_10DB_REG);


 regmap_write(priv->regmap, MT6358_AUDNCP_CLKDIV_CON1, 0x0001);

 regmap_write(priv->regmap, MT6358_AUDNCP_CLKDIV_CON2, 0x002c);

 regmap_write(priv->regmap, MT6358_AUDNCP_CLKDIV_CON0, 0x0001);

 regmap_write(priv->regmap, MT6358_AUDNCP_CLKDIV_CON4, 0x0003);

 regmap_write(priv->regmap, MT6358_AUDNCP_CLKDIV_CON3, 0x0000);
 usleep_range(250, 270);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON14,
      0x1055, 0x1055);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON15, 0x0001);
 usleep_range(100, 120);


 hp_zcd_disable(priv);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x3000);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON11, 0x4900);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4033);


 hp_pull_down(priv, 0);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30c0);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30f0);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0200);



 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON10, 0x0000);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x0003);

 hp_main_output_ramp(priv, 1);


 regmap_write(priv->regmap, MT6358_ZCD_CON1, DL_GAIN_N_40DB_REG);

 headset_volume_ramp(priv,
       DL_GAIN_N_10DB,
       priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL]);


 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0110);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0112);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0113);


 regmap_update_bits(priv->regmap, MT6358_ZCD_CON1,
      RG_AUDLOLGAIN_MASK_SFT,
      priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTL] <<
      RG_AUDLOLGAIN_SFT);
 regmap_update_bits(priv->regmap, MT6358_ZCD_CON1,
      RG_AUDLORGAIN_MASK_SFT,
      priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTR] <<
      RG_AUDLORGAIN_SFT);


 regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON13, 0x1, 0x1);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30f9);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0201);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x011b);

 regmap_write(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x35f9);

 return 0;
}
