
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_dmaengine_pcm_close_release_chan (struct snd_pcm_substream*) ;

int pxa2xx_pcm_close(struct snd_pcm_substream *substream)
{
 return snd_dmaengine_pcm_close_release_chan(substream);
}
