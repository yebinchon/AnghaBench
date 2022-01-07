
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int * capture_dma_data; int * playback_dma_data; } ;
struct davinci_mcbsp_dev {int * dma_data; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct davinci_mcbsp_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct davinci_mcbsp_dev *dev = snd_soc_dai_get_drvdata(dai);

 dai->playback_dma_data = &dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK];
 dai->capture_dma_data = &dev->dma_data[SNDRV_PCM_STREAM_CAPTURE];

 return 0;
}
