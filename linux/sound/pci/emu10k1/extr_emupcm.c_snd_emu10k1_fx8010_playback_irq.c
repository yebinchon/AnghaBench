
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_emu10k1 {int dummy; } ;


 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_emu10k1_fx8010_playback_irq(struct snd_emu10k1 *emu, void *private_data)
{
 struct snd_pcm_substream *substream = private_data;
 snd_pcm_period_elapsed(substream);
}
