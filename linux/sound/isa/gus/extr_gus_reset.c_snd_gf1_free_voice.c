
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gus_voice {int number; void (* private_free ) (struct snd_gus_voice*) ;int * sample_ops; scalar_t__ pcm; scalar_t__ use; int * private_data; } ;
struct TYPE_2__ {int pcm_alloc_voices; } ;
struct snd_gus_card {int voice_alloc; TYPE_1__ gf1; } ;


 int SNDRV_GF1_HANDLER_VOICE ;
 int snd_gf1_clear_voices (struct snd_gus_card*,int,int) ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_gf1_free_voice(struct snd_gus_card * gus, struct snd_gus_voice *voice)
{
 unsigned long flags;
 void (*private_free)(struct snd_gus_voice *voice);

 if (voice == ((void*)0) || !voice->use)
  return;
 snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_VOICE | voice->number);
 snd_gf1_clear_voices(gus, voice->number, voice->number);
 spin_lock_irqsave(&gus->voice_alloc, flags);
 private_free = voice->private_free;
 voice->private_free = ((void*)0);
 voice->private_data = ((void*)0);
 if (voice->pcm)
  gus->gf1.pcm_alloc_voices--;
 voice->use = voice->pcm = 0;
 voice->sample_ops = ((void*)0);
 spin_unlock_irqrestore(&gus->voice_alloc, flags);
 if (private_free)
  private_free(voice);
}
