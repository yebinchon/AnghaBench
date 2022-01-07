
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_update_hw_ptr0 (struct snd_pcm_substream*,int ) ;

int snd_pcm_update_hw_ptr(struct snd_pcm_substream *substream)
{
 return snd_pcm_update_hw_ptr0(substream, 0);
}
