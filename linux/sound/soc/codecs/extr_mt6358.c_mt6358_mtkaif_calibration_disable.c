
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct mt6358_priv {int regmap; } ;


 int MT6358_AUDIO_DIG_CFG ;
 int RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_MASK_SFT ;
 int RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_SFT ;
 int RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_MASK_SFT ;
 int RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_SFT ;
 int capture_gpio_reset (struct mt6358_priv*) ;
 int mt6358_mtkaif_tx_disable (struct mt6358_priv*) ;
 int mt6358_set_aud_global_bias (struct mt6358_priv*,int) ;
 int mt6358_set_clksq (struct mt6358_priv*,int) ;
 int mt6358_set_dcxo (struct mt6358_priv*,int) ;
 int mt6358_set_topck (struct mt6358_priv*,int) ;
 int playback_gpio_reset (struct mt6358_priv*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct mt6358_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int mt6358_mtkaif_calibration_disable(struct snd_soc_component *cmpnt)
{
 struct mt6358_priv *priv = snd_soc_component_get_drvdata(cmpnt);


 regmap_update_bits(priv->regmap, MT6358_AUDIO_DIG_CFG,
      RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_MASK_SFT,
      0 << RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_SFT);
 regmap_update_bits(priv->regmap, MT6358_AUDIO_DIG_CFG,
      RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_MASK_SFT,
      0 << RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_SFT);

 mt6358_set_topck(priv, 0);
 mt6358_set_clksq(priv, 0);
 mt6358_set_aud_global_bias(priv, 0);
 mt6358_set_dcxo(priv, 0);

 mt6358_mtkaif_tx_disable(priv);
 playback_gpio_reset(priv);
 capture_gpio_reset(priv);
 return 0;
}
