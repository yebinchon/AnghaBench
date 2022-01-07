
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* capture_dma_data; TYPE_2__* playback_dma_data; } ;
struct TYPE_3__ {int * filter_data; } ;
struct TYPE_4__ {int * filter_data; } ;
struct ep93xx_i2s_info {TYPE_1__ dma_params_rx; TYPE_2__ dma_params_tx; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int * ep93xx_i2s_dma_data ;
 struct ep93xx_i2s_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int ep93xx_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct ep93xx_i2s_info *info = snd_soc_dai_get_drvdata(dai);

 info->dma_params_tx.filter_data =
  &ep93xx_i2s_dma_data[SNDRV_PCM_STREAM_PLAYBACK];
 info->dma_params_rx.filter_data =
  &ep93xx_i2s_dma_data[SNDRV_PCM_STREAM_CAPTURE];

 dai->playback_dma_data = &info->dma_params_tx;
 dai->capture_dma_data = &info->dma_params_rx;

 return 0;
}
