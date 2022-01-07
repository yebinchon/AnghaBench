
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_dmaengine_pcm_trigger (struct snd_pcm_substream*,int) ;

int pxa2xx_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 return snd_dmaengine_pcm_trigger(substream, cmd);
}
