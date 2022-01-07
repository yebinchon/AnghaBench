
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident_voice {unsigned int stimer; unsigned int spurious_threshold; unsigned int isync_max; unsigned int isync_mark; int isync_ESO; unsigned int ESO; int * substream; int number; struct snd_trident_voice* extra; scalar_t__ isync2; int isync3; scalar_t__ isync; int pcm; } ;
struct TYPE_3__ {struct snd_trident_voice* voices; } ;
struct snd_trident {unsigned int spurious_irq_max_delta; int bDMAStart; TYPE_2__* rmidi; int reg_lock; int spurious_irq_count; TYPE_1__ synth; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int private_data; } ;


 unsigned int ADDRESS_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int MPU401_IRQ ;
 int NX_SPCTRL_SPCSO ;
 int T4D_AINT_A ;
 int T4D_AINT_B ;
 int T4D_MISCINT ;
 int T4D_MPUR0 ;
 int T4D_SBBL_SBCL ;
 int T4D_STIMER ;
 int T4D_STOP_B ;
 int TRID_REG (struct snd_trident*,int ) ;
 int inb (int ) ;
 int inl (int ) ;
 unsigned int inw (int ) ;
 int outl (unsigned int,int ) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (int *) ;
 int snd_trident_start_voice (struct snd_trident*,int ) ;
 int snd_trident_stop_voice (struct snd_trident*,int ) ;
 int snd_trident_write_cso_reg (struct snd_trident*,struct snd_trident_voice*,unsigned int) ;
 int snd_trident_write_eso_reg (struct snd_trident*,struct snd_trident_voice*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_trident_interrupt(int irq, void *dev_id)
{
 struct snd_trident *trident = dev_id;
 unsigned int audio_int, chn_int, stimer, channel, mask, tmp;
 int delta;
 struct snd_trident_voice *voice;

 audio_int = inl(TRID_REG(trident, T4D_MISCINT));
 if ((audio_int & (ADDRESS_IRQ|MPU401_IRQ)) == 0)
  return IRQ_NONE;
 if (audio_int & ADDRESS_IRQ) {

  spin_lock(&trident->reg_lock);
  stimer = inl(TRID_REG(trident, T4D_STIMER)) & 0x00ffffff;
  chn_int = inl(TRID_REG(trident, T4D_AINT_A));
  if (chn_int == 0)
   goto __skip1;
  outl(chn_int, TRID_REG(trident, T4D_AINT_A));
       __skip1:
  chn_int = inl(TRID_REG(trident, T4D_AINT_B));
  if (chn_int == 0)
   goto __skip2;
  for (channel = 63; channel >= 32; channel--) {
   mask = 1 << (channel&0x1f);
   if ((chn_int & mask) == 0)
    continue;
   voice = &trident->synth.voices[channel];
   if (!voice->pcm || voice->substream == ((void*)0)) {
    outl(mask, TRID_REG(trident, T4D_STOP_B));
    continue;
   }
   delta = (int)stimer - (int)voice->stimer;
   if (delta < 0)
    delta = -delta;
   if ((unsigned int)delta < voice->spurious_threshold) {

    trident->spurious_irq_count++;
    if (trident->spurious_irq_max_delta < (unsigned int)delta)
     trident->spurious_irq_max_delta = delta;
    continue;
   }
   voice->stimer = stimer;
   if (voice->isync) {
    if (!voice->isync3) {
     tmp = inw(TRID_REG(trident, T4D_SBBL_SBCL));
     if (trident->bDMAStart & 0x40)
      tmp >>= 1;
     if (tmp > 0)
      tmp = voice->isync_max - tmp;
    } else {
     tmp = inl(TRID_REG(trident, NX_SPCTRL_SPCSO)) & 0x00ffffff;
    }
    if (tmp < voice->isync_mark) {
     if (tmp > 0x10)
      tmp = voice->isync_ESO - 7;
     else
      tmp = voice->isync_ESO + 2;

     snd_trident_stop_voice(trident, voice->number);
     snd_trident_write_eso_reg(trident, voice, tmp);
     snd_trident_start_voice(trident, voice->number);
    }
   } else if (voice->isync2) {
    voice->isync2 = 0;

    snd_trident_stop_voice(trident, voice->number);
    snd_trident_write_cso_reg(trident, voice, voice->isync_mark);
    snd_trident_write_eso_reg(trident, voice, voice->ESO);
    snd_trident_start_voice(trident, voice->number);
   }
   spin_unlock(&trident->reg_lock);
   snd_pcm_period_elapsed(voice->substream);
   spin_lock(&trident->reg_lock);
  }
  outl(chn_int, TRID_REG(trident, T4D_AINT_B));
       __skip2:
  spin_unlock(&trident->reg_lock);
 }
 if (audio_int & MPU401_IRQ) {
  if (trident->rmidi) {
   snd_mpu401_uart_interrupt(irq, trident->rmidi->private_data);
  } else {
   inb(TRID_REG(trident, T4D_MPUR0));
  }
 }

 return IRQ_HANDLED;
}
