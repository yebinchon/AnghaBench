
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ali_voice {int use; int pcm; int mode; struct snd_ali* codec; } ;
struct TYPE_4__ {struct snd_ali_voice* voices; } ;
struct snd_ali {int voice_alloc; TYPE_2__ synth; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int SNDRV_ALI_VOICE_TYPE_PCM ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*) ;
 int snd_ali_alloc_pcm_channel (struct snd_ali*,int) ;
 int snd_ali_find_free_channel (struct snd_ali*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct snd_ali_voice *snd_ali_alloc_voice(struct snd_ali * codec,
       int type, int rec, int channel)
{
 struct snd_ali_voice *pvoice;
 int idx;

 dev_dbg(codec->card->dev, "alloc_voice: type=%d rec=%d\n", type, rec);

 spin_lock_irq(&codec->voice_alloc);
 if (type == SNDRV_ALI_VOICE_TYPE_PCM) {
  idx = channel > 0 ? snd_ali_alloc_pcm_channel(codec, channel) :
   snd_ali_find_free_channel(codec,rec);
  if (idx < 0) {
   dev_err(codec->card->dev, "ali_alloc_voice: err.\n");
   spin_unlock_irq(&codec->voice_alloc);
   return ((void*)0);
  }
  pvoice = &(codec->synth.voices[idx]);
  pvoice->codec = codec;
  pvoice->use = 1;
  pvoice->pcm = 1;
  pvoice->mode = rec;
  spin_unlock_irq(&codec->voice_alloc);
  return pvoice;
 }
 spin_unlock_irq(&codec->voice_alloc);
 return ((void*)0);
}
