
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct mt6358_priv {int regmap; } ;


 int MT6358_AUDIO_DIG_CFG ;
 int RG_AUD_PAD_TOP_PHASE_MODE2_MASK_SFT ;
 int RG_AUD_PAD_TOP_PHASE_MODE2_SFT ;
 int RG_AUD_PAD_TOP_PHASE_MODE_MASK_SFT ;
 int RG_AUD_PAD_TOP_PHASE_MODE_SFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct mt6358_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int mt6358_set_mtkaif_calibration_phase(struct snd_soc_component *cmpnt,
     int phase_1, int phase_2)
{
 struct mt6358_priv *priv = snd_soc_component_get_drvdata(cmpnt);

 regmap_update_bits(priv->regmap, MT6358_AUDIO_DIG_CFG,
      RG_AUD_PAD_TOP_PHASE_MODE_MASK_SFT,
      phase_1 << RG_AUD_PAD_TOP_PHASE_MODE_SFT);
 regmap_update_bits(priv->regmap, MT6358_AUDIO_DIG_CFG,
      RG_AUD_PAD_TOP_PHASE_MODE2_MASK_SFT,
      phase_2 << RG_AUD_PAD_TOP_PHASE_MODE2_SFT);
 return 0;
}
