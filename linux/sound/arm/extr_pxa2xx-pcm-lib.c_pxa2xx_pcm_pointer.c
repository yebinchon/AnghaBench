
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int snd_dmaengine_pcm_pointer (struct snd_pcm_substream*) ;

snd_pcm_uframes_t
pxa2xx_pcm_pointer(struct snd_pcm_substream *substream)
{
 return snd_dmaengine_pcm_pointer(substream);
}
