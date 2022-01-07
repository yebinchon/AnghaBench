
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ymfpci_pcm {size_t capture_bank_number; int shift; int last_pos; int buffer_size; int period_pos; int period_size; scalar_t__ running; struct snd_ymfpci* chip; } ;
struct snd_ymfpci {size_t active_bank; int reg_lock; TYPE_1__*** bank_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
struct TYPE_2__ {int start; } ;


 int le32_to_cpu (int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_ymfpci_pcm_capture_interrupt(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm = runtime->private_data;
 struct snd_ymfpci *chip = ypcm->chip;
 u32 pos, delta;

 spin_lock(&chip->reg_lock);
 if (ypcm->running) {
  pos = le32_to_cpu(chip->bank_capture[ypcm->capture_bank_number][chip->active_bank]->start) >> ypcm->shift;
  if (pos < ypcm->last_pos)
   delta = pos + (ypcm->buffer_size - ypcm->last_pos);
  else
   delta = pos - ypcm->last_pos;
  ypcm->period_pos += delta;
  ypcm->last_pos = pos;
  if (ypcm->period_pos >= ypcm->period_size) {
   ypcm->period_pos %= ypcm->period_size;






   spin_unlock(&chip->reg_lock);
   snd_pcm_period_elapsed(substream);
   spin_lock(&chip->reg_lock);
  }
 }
 spin_unlock(&chip->reg_lock);
}
