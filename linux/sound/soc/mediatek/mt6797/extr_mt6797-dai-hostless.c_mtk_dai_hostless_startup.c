
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe {int mtk_afe_hardware; } ;


 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int mtk_dai_hostless_startup(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);

 return snd_soc_set_runtime_hwparams(substream, afe->mtk_afe_hardware);
}
