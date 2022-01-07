
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp {int * dma_data; int dev; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int pm_runtime_enable (int ) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int omap_mcbsp_probe(struct snd_soc_dai *dai)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(dai);

 pm_runtime_enable(mcbsp->dev);

 snd_soc_dai_init_dma_data(dai,
      &mcbsp->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
      &mcbsp->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

 return 0;
}
