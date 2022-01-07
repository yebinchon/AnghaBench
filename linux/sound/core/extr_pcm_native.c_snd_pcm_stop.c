
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_state_t ;


 int snd_pcm_action (int *,struct snd_pcm_substream*,int ) ;
 int snd_pcm_action_stop ;

int snd_pcm_stop(struct snd_pcm_substream *substream, snd_pcm_state_t state)
{
 return snd_pcm_action(&snd_pcm_action_stop, substream, state);
}
