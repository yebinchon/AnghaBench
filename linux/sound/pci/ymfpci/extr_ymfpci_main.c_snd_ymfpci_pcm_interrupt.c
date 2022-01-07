
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_ymfpci_voice {struct snd_ymfpci_playback_bank* bank; struct snd_ymfpci_pcm* ypcm; } ;
struct snd_ymfpci_playback_bank {void* eff3_gain_end; void* right_gain_end; void* eff2_gain_end; void* left_gain_end; int start; } ;
struct snd_ymfpci_pcm {scalar_t__ last_pos; scalar_t__ buffer_size; int update_pcm_vol; scalar_t__ output_rear; TYPE_1__** voices; TYPE_3__* substream; int period_size; int period_pos; scalar_t__ running; } ;
struct snd_ymfpci {size_t active_bank; int reg_lock; TYPE_2__* pcm_mixer; } ;
typedef void* __le32 ;
struct TYPE_6__ {unsigned int number; } ;
struct TYPE_5__ {int left; int right; } ;
struct TYPE_4__ {struct snd_ymfpci_playback_bank* bank; } ;


 void* cpu_to_le32 (int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int snd_pcm_period_elapsed (TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void snd_ymfpci_pcm_interrupt(struct snd_ymfpci *chip, struct snd_ymfpci_voice *voice)
{
 struct snd_ymfpci_pcm *ypcm;
 u32 pos, delta;

 if ((ypcm = voice->ypcm) == ((void*)0))
  return;
 if (ypcm->substream == ((void*)0))
  return;
 spin_lock(&chip->reg_lock);
 if (ypcm->running) {
  pos = le32_to_cpu(voice->bank[chip->active_bank].start);
  if (pos < ypcm->last_pos)
   delta = pos + (ypcm->buffer_size - ypcm->last_pos);
  else
   delta = pos - ypcm->last_pos;
  ypcm->period_pos += delta;
  ypcm->last_pos = pos;
  if (ypcm->period_pos >= ypcm->period_size) {






   ypcm->period_pos %= ypcm->period_size;
   spin_unlock(&chip->reg_lock);
   snd_pcm_period_elapsed(ypcm->substream);
   spin_lock(&chip->reg_lock);
  }

  if (unlikely(ypcm->update_pcm_vol)) {
   unsigned int subs = ypcm->substream->number;
   unsigned int next_bank = 1 - chip->active_bank;
   struct snd_ymfpci_playback_bank *bank;
   __le32 volume;

   bank = &voice->bank[next_bank];
   volume = cpu_to_le32(chip->pcm_mixer[subs].left << 15);
   bank->left_gain_end = volume;
   if (ypcm->output_rear)
    bank->eff2_gain_end = volume;
   if (ypcm->voices[1])
    bank = &ypcm->voices[1]->bank[next_bank];
   volume = cpu_to_le32(chip->pcm_mixer[subs].right << 15);
   bank->right_gain_end = volume;
   if (ypcm->output_rear)
    bank->eff3_gain_end = volume;
   ypcm->update_pcm_vol--;
  }
 }
 spin_unlock(&chip->reg_lock);
}
