
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int timer; scalar_t__ respawn_timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void snd_card_asihpi_pcm_timer_stop(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;

 dpcm->respawn_timer = 0;
 del_timer(&dpcm->timer);
}
