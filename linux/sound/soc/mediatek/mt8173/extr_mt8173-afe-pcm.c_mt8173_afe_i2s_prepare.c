
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct mtk_base_afe {struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int * clocks; } ;


 size_t MT8173_CLK_I2S1_M ;
 size_t MT8173_CLK_I2S2_M ;
 int mt8173_afe_dais_set_clks (struct mtk_base_afe*,int ,int,int *,int ) ;
 int mt8173_afe_set_i2s (struct mtk_base_afe*,int) ;
 int mt8173_afe_set_i2s_enable (struct mtk_base_afe*,int) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt8173_afe_i2s_prepare(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime * const runtime = substream->runtime;
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mt8173_afe_private *afe_priv = afe->platform_priv;
 int ret;

 mt8173_afe_dais_set_clks(afe, afe_priv->clocks[MT8173_CLK_I2S1_M],
     runtime->rate * 256, ((void*)0), 0);
 mt8173_afe_dais_set_clks(afe, afe_priv->clocks[MT8173_CLK_I2S2_M],
     runtime->rate * 256, ((void*)0), 0);

 ret = mt8173_afe_set_i2s(afe, substream->runtime->rate);
 if (ret)
  return ret;

 mt8173_afe_set_i2s_enable(afe, 1);

 return 0;
}
