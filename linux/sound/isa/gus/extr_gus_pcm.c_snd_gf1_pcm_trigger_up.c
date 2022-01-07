
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; unsigned int channels; int format; struct gus_pcm_private* private_data; } ;
struct TYPE_3__ {unsigned short pcm_volume_level_left; unsigned short pcm_volume_level_right; scalar_t__ enh_mode; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;
struct gus_pcm_private {int flags; int blocks; unsigned int voices; unsigned int memory; unsigned int dma_size; unsigned int bpos; unsigned int block_size; TYPE_2__** pvoices; int lock; scalar_t__ final_volume; struct snd_gus_card* gus; } ;
struct TYPE_4__ {int number; } ;


 unsigned char SNDRV_GF1_MIN_OFFSET ;
 int SNDRV_GF1_MIN_VOLUME ;
 int SNDRV_GF1_PCM_PFLG_ACTIVE ;
 int SNDRV_GF1_VA_CURRENT ;
 int SNDRV_GF1_VA_END ;
 int SNDRV_GF1_VA_START ;
 int SNDRV_GF1_VB_ADDRESS_CONTROL ;
 int SNDRV_GF1_VB_MODE ;
 int SNDRV_GF1_VB_PAN ;
 int SNDRV_GF1_VB_VOLUME_CONTROL ;
 int SNDRV_GF1_VB_VOLUME_END ;
 int SNDRV_GF1_VB_VOLUME_RATE ;
 int SNDRV_GF1_VB_VOLUME_START ;
 int SNDRV_GF1_VW_FREQUENCY ;
 int SNDRV_GF1_VW_VOLUME ;
 int snd_gf1_delay (struct snd_gus_card*) ;
 int snd_gf1_select_voice (struct snd_gus_card*,int ) ;
 unsigned short snd_gf1_translate_freq (struct snd_gus_card*,int) ;
 int snd_gf1_write16 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,unsigned char) ;
 int snd_gf1_write_addr (struct snd_gus_card*,int ,unsigned int,unsigned char) ;
 int snd_pcm_format_width (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_pcm_trigger_up(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct gus_pcm_private *pcmp = runtime->private_data;
 struct snd_gus_card * gus = pcmp->gus;
 unsigned long flags;
 unsigned char voice_ctrl, ramp_ctrl;
 unsigned short rate;
 unsigned int curr, begin, end;
 unsigned short vol;
 unsigned char pan;
 unsigned int voice;

 spin_lock_irqsave(&pcmp->lock, flags);
 if (pcmp->flags & SNDRV_GF1_PCM_PFLG_ACTIVE) {
  spin_unlock_irqrestore(&pcmp->lock, flags);
  return;
 }
 pcmp->flags |= SNDRV_GF1_PCM_PFLG_ACTIVE;
 pcmp->final_volume = 0;
 spin_unlock_irqrestore(&pcmp->lock, flags);
 rate = snd_gf1_translate_freq(gus, runtime->rate << 4);

 voice_ctrl = snd_pcm_format_width(runtime->format) == 16 ? 0x24 : 0x20;

 ramp_ctrl = 0x24;
 if (pcmp->blocks == 1) {
  voice_ctrl |= 0x08;
  ramp_ctrl &= ~0x04;
 }
 for (voice = 0; voice < pcmp->voices; voice++) {
  begin = pcmp->memory + voice * (pcmp->dma_size / runtime->channels);
  curr = begin + (pcmp->bpos * pcmp->block_size) / runtime->channels;
  end = curr + (pcmp->block_size / runtime->channels);
  end -= snd_pcm_format_width(runtime->format) == 16 ? 2 : 1;





  pan = runtime->channels == 2 ? (!voice ? 1 : 14) : 8;
  vol = !voice ? gus->gf1.pcm_volume_level_left : gus->gf1.pcm_volume_level_right;
  spin_lock_irqsave(&gus->reg_lock, flags);
  snd_gf1_select_voice(gus, pcmp->pvoices[voice]->number);
  snd_gf1_write8(gus, SNDRV_GF1_VB_PAN, pan);
  snd_gf1_write16(gus, SNDRV_GF1_VW_FREQUENCY, rate);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_START, begin << 4, voice_ctrl & 4);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_END, end << 4, voice_ctrl & 4);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_CURRENT, curr << 4, voice_ctrl & 4);
  snd_gf1_write16(gus, SNDRV_GF1_VW_VOLUME, SNDRV_GF1_MIN_VOLUME << 4);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_RATE, 0x2f);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_START, SNDRV_GF1_MIN_OFFSET);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_END, vol >> 8);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_CONTROL, ramp_ctrl);
  if (!gus->gf1.enh_mode) {
   snd_gf1_delay(gus);
   snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_CONTROL, ramp_ctrl);
  }
  spin_unlock_irqrestore(&gus->reg_lock, flags);
 }
 spin_lock_irqsave(&gus->reg_lock, flags);
 for (voice = 0; voice < pcmp->voices; voice++) {
  snd_gf1_select_voice(gus, pcmp->pvoices[voice]->number);
  if (gus->gf1.enh_mode)
   snd_gf1_write8(gus, SNDRV_GF1_VB_MODE, 0x00);
  snd_gf1_write8(gus, SNDRV_GF1_VB_ADDRESS_CONTROL, voice_ctrl);
  voice_ctrl &= ~0x20;
 }
 voice_ctrl |= 0x20;
 if (!gus->gf1.enh_mode) {
  snd_gf1_delay(gus);
  for (voice = 0; voice < pcmp->voices; voice++) {
   snd_gf1_select_voice(gus, pcmp->pvoices[voice]->number);
   snd_gf1_write8(gus, SNDRV_GF1_VB_ADDRESS_CONTROL, voice_ctrl);
   voice_ctrl &= ~0x20;
  }
 }
 spin_unlock_irqrestore(&gus->reg_lock, flags);
}
