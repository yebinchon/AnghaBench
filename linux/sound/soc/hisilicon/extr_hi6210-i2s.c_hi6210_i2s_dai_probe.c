
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct hi6210_i2s {int * dma_data; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct hi6210_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int hi6210_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct hi6210_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai,
      &i2s->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
      &i2s->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

 return 0;
}
