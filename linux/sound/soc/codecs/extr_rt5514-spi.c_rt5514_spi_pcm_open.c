
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int rt5514_spi_pcm_hardware ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int rt5514_spi_pcm_open(struct snd_pcm_substream *substream)
{
 snd_soc_set_runtime_hwparams(substream, &rt5514_spi_pcm_hardware);

 return 0;
}
