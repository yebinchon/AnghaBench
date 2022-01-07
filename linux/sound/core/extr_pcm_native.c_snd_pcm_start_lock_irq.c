
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int SNDRV_PCM_STATE_RUNNING ;
 int snd_pcm_action_lock_irq (int *,struct snd_pcm_substream*,int ) ;
 int snd_pcm_action_start ;

__attribute__((used)) static int snd_pcm_start_lock_irq(struct snd_pcm_substream *substream)
{
 return snd_pcm_action_lock_irq(&snd_pcm_action_start, substream,
           SNDRV_PCM_STATE_RUNNING);
}
