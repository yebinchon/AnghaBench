
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int capture_dma_data; int playback_dma_data; } ;
struct snd_soc_dai {int dummy; } ;


 struct sun4i_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct sun4i_i2s*) ;

__attribute__((used)) static int sun4i_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai,
      &i2s->playback_dma_data,
      &i2s->capture_dma_data);

 snd_soc_dai_set_drvdata(dai, i2s);

 return 0;
}
