
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct mtk_base_afe_memif {scalar_t__ substream; } ;
struct mtk_base_afe {int dev; struct mtk_base_afe_memif* memif; } ;


 int EBUSY ;
 size_t MT2701_MEMIF_DLM ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_warn (int ,char*) ;
 int mtk_afe_fe_startup (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt2701_simple_fe_startup(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mtk_base_afe_memif *memif_tmp;
 int stream_dir = substream->stream;


 if (stream_dir == SNDRV_PCM_STREAM_PLAYBACK) {
  memif_tmp = &afe->memif[MT2701_MEMIF_DLM];
  if (memif_tmp->substream) {
   dev_warn(afe->dev, "memif is not available");
   return -EBUSY;
  }
 }

 return mtk_afe_fe_startup(substream, dai);
}
