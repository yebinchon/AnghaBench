
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe {struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int * clocks; } ;


 size_t MT8173_CLK_I2S3_B ;
 size_t MT8173_CLK_I2S3_M ;
 int mt8173_afe_dais_disable_clks (struct mtk_base_afe*,int ,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mt8173_afe_hdmi_shutdown(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mt8173_afe_private *afe_priv = afe->platform_priv;

 if (dai->active)
  return;

 mt8173_afe_dais_disable_clks(afe, afe_priv->clocks[MT8173_CLK_I2S3_M],
         afe_priv->clocks[MT8173_CLK_I2S3_B]);
}
