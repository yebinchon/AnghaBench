
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int period_bytes_max; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {TYPE_2__ hw; } ;
struct snd_emu10k1_fx8010_pcm {int buffer_size; scalar_t__ valid; int opened; int channels; } ;
struct TYPE_3__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {int reg_lock; TYPE_1__ fx8010; } ;


 int ENODEV ;
 TYPE_2__ snd_emu10k1_fx8010_playback ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_emu10k1_fx8010_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];

 runtime->hw = snd_emu10k1_fx8010_playback;
 runtime->hw.channels_min = runtime->hw.channels_max = pcm->channels;
 runtime->hw.period_bytes_max = (pcm->buffer_size * 2) / 2;
 spin_lock_irq(&emu->reg_lock);
 if (pcm->valid == 0) {
  spin_unlock_irq(&emu->reg_lock);
  return -ENODEV;
 }
 pcm->opened = 1;
 spin_unlock_irq(&emu->reg_lock);
 return 0;
}
