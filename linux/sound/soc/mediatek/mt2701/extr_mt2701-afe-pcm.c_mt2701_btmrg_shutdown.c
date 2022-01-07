
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct mtk_base_afe {int regmap; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {scalar_t__* mrg_enable; } ;


 int AFE_DAIBT_CON0 ;
 int AFE_DAIBT_CON0_DAIBT_EN ;
 int AFE_MRGIF_CON ;
 int AFE_MRGIF_CON_MRG_EN ;
 int AFE_MRGIF_CON_MRG_I2S_EN ;
 int mt2701_disable_btmrg_clk (struct mtk_base_afe*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mt2701_btmrg_shutdown(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mt2701_afe_private *afe_priv = afe->platform_priv;


 if (!afe_priv->mrg_enable[!substream->stream]) {
  regmap_update_bits(afe->regmap, AFE_DAIBT_CON0,
       AFE_DAIBT_CON0_DAIBT_EN, 0);
  regmap_update_bits(afe->regmap, AFE_MRGIF_CON,
       AFE_MRGIF_CON_MRG_EN, 0);
  regmap_update_bits(afe->regmap, AFE_MRGIF_CON,
       AFE_MRGIF_CON_MRG_I2S_EN, 0);
  mt2701_disable_btmrg_clk(afe);
 }

 afe_priv->mrg_enable[substream->stream] = 0;
}
