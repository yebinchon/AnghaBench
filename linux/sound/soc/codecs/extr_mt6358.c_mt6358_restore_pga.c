
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {unsigned int* ana_gain; int regmap; } ;


 size_t AUDIO_ANALOG_VOLUME_MICAMP1 ;
 size_t AUDIO_ANALOG_VOLUME_MICAMP2 ;
 int MT6358_AUDENC_ANA_CON0 ;
 int MT6358_AUDENC_ANA_CON1 ;
 int RG_AUDPREAMPLGAIN_MASK_SFT ;
 unsigned int RG_AUDPREAMPLGAIN_SFT ;
 int RG_AUDPREAMPRGAIN_MASK_SFT ;
 unsigned int RG_AUDPREAMPRGAIN_SFT ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static void mt6358_restore_pga(struct mt6358_priv *priv)
{
 unsigned int gain_l, gain_r;

 gain_l = priv->ana_gain[AUDIO_ANALOG_VOLUME_MICAMP1];
 gain_r = priv->ana_gain[AUDIO_ANALOG_VOLUME_MICAMP2];

 regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON0,
      RG_AUDPREAMPLGAIN_MASK_SFT,
      gain_l << RG_AUDPREAMPLGAIN_SFT);
 regmap_update_bits(priv->regmap, MT6358_AUDENC_ANA_CON1,
      RG_AUDPREAMPRGAIN_MASK_SFT,
      gain_r << RG_AUDPREAMPRGAIN_SFT);
}
