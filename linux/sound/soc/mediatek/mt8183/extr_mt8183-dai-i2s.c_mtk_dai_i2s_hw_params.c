
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct mtk_base_afe {int dummy; } ;


 int mtk_dai_i2s_config (struct mtk_base_afe*,struct snd_pcm_hw_params*,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mtk_dai_i2s_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);

 return mtk_dai_i2s_config(afe, params, dai->id);
}
