
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct axi_i2s {int capture_dma_data; scalar_t__ has_capture; int playback_dma_data; scalar_t__ has_playback; } ;


 struct axi_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int axi_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct axi_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(
  dai,
  i2s->has_playback ? &i2s->playback_dma_data : ((void*)0),
  i2s->has_capture ? &i2s->capture_dma_data : ((void*)0));

 return 0;
}
