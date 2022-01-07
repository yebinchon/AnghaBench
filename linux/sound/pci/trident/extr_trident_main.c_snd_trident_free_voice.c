
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {void (* private_free ) (struct snd_trident_voice*) ;int * extra; int * substream; int * sample_ops; scalar_t__ spdif; scalar_t__ capture; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int number; int * private_data; } ;
struct snd_trident {int voice_alloc; } ;


 int snd_trident_clear_voices (struct snd_trident*,int ,int ) ;
 int snd_trident_free_pcm_channel (struct snd_trident*,int ) ;
 int snd_trident_free_synth_channel (struct snd_trident*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_trident_free_voice(struct snd_trident * trident, struct snd_trident_voice *voice)
{
 unsigned long flags;
 void (*private_free)(struct snd_trident_voice *);

 if (voice == ((void*)0) || !voice->use)
  return;
 snd_trident_clear_voices(trident, voice->number, voice->number);
 spin_lock_irqsave(&trident->voice_alloc, flags);
 private_free = voice->private_free;
 voice->private_free = ((void*)0);
 voice->private_data = ((void*)0);
 if (voice->pcm)
  snd_trident_free_pcm_channel(trident, voice->number);
 if (voice->synth)
  snd_trident_free_synth_channel(trident, voice->number);
 voice->use = voice->pcm = voice->synth = voice->midi = 0;
 voice->capture = voice->spdif = 0;
 voice->sample_ops = ((void*)0);
 voice->substream = ((void*)0);
 voice->extra = ((void*)0);
 spin_unlock_irqrestore(&trident->voice_alloc, flags);
 if (private_free)
  private_free(voice);
}
