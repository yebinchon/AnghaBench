
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,int *) ;

__attribute__((used)) static void dw_i2s_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 snd_soc_dai_set_dma_data(dai, substream, ((void*)0));
}
