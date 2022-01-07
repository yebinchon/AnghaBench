
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali_voice {void (* private_free ) (void*) ;int * substream; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int number; int * private_data; } ;
struct snd_ali {int voice_alloc; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int snd_ali_clear_voices (struct snd_ali*,int ,int ) ;
 int snd_ali_free_channel_pcm (struct snd_ali*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void snd_ali_free_voice(struct snd_ali * codec,
          struct snd_ali_voice *pvoice)
{
 void (*private_free)(void *);
 void *private_data;

 dev_dbg(codec->card->dev, "free_voice: channel=%d\n", pvoice->number);
 if (!pvoice->use)
  return;
 snd_ali_clear_voices(codec, pvoice->number, pvoice->number);
 spin_lock_irq(&codec->voice_alloc);
 private_free = pvoice->private_free;
 private_data = pvoice->private_data;
 pvoice->private_free = ((void*)0);
 pvoice->private_data = ((void*)0);
 if (pvoice->pcm)
  snd_ali_free_channel_pcm(codec, pvoice->number);
 pvoice->use = pvoice->pcm = pvoice->synth = 0;
 pvoice->substream = ((void*)0);
 spin_unlock_irq(&codec->voice_alloc);
 if (private_free)
  private_free(private_data);
}
