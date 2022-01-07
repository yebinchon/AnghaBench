
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct sirf_usp {int capture_dma_data; int playback_dma_data; } ;


 struct sirf_usp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int sirf_usp_pcm_dai_probe(struct snd_soc_dai *dai)
{
 struct sirf_usp *usp = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, &usp->playback_dma_data,
   &usp->capture_dma_data);
 return 0;
}
