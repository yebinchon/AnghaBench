
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx_pcm {scalar_t__ substream; } ;
struct TYPE_6__ {scalar_t__ substream; } ;
struct snd_cs46xx {int midcr; int reg_lock; int midi_output; int midi_input; scalar_t__ rmidi; TYPE_3__ capt; scalar_t__ pcm; TYPE_2__* playback_pcm; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {TYPE_1__* pcm_channels; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {scalar_t__ substream; } ;
struct TYPE_4__ {struct snd_cs46xx_pcm* private_data; int unlinked; scalar_t__ active; } ;


 int BA0_HICR ;
 int BA0_HISR ;
 int BA0_HSR0 ;
 int BA0_MIDCR ;
 int BA0_MIDRP ;
 int BA0_MIDSR ;
 int BA0_MIDWP ;
 int CS46XX_DSP_CAPTURE_CHANNEL ;
 int DSP_MAX_PCM_CHANNELS ;
 unsigned char HICR_CHGM ;
 unsigned char HICR_IEV ;
 int HISR_MIDI ;
 int HISR_VC0 ;
 int HISR_VC1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MIDCR_RIE ;
 int MIDCR_TIE ;
 int MIDSR_RBE ;
 int MIDSR_TBF ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,unsigned char) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 int snd_rawmidi_transmit (int ,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_cs46xx_interrupt(int irq, void *dev_id)
{
 struct snd_cs46xx *chip = dev_id;
 u32 status1;
 status1 = snd_cs46xx_peekBA0(chip, BA0_HISR);
 if ((status1 & 0x7fffffff) == 0) {
  snd_cs46xx_pokeBA0(chip, BA0_HICR, HICR_CHGM | HICR_IEV);
  return IRQ_NONE;
 }
 if ((status1 & HISR_VC0) && chip->playback_pcm) {
  if (chip->playback_pcm->substream)
   snd_pcm_period_elapsed(chip->playback_pcm->substream);
 }
 if ((status1 & HISR_VC1) && chip->pcm) {
  if (chip->capt.substream)
   snd_pcm_period_elapsed(chip->capt.substream);
 }


 if ((status1 & HISR_MIDI) && chip->rmidi) {
  unsigned char c;

  spin_lock(&chip->reg_lock);
  while ((snd_cs46xx_peekBA0(chip, BA0_MIDSR) & MIDSR_RBE) == 0) {
   c = snd_cs46xx_peekBA0(chip, BA0_MIDRP);
   if ((chip->midcr & MIDCR_RIE) == 0)
    continue;
   snd_rawmidi_receive(chip->midi_input, &c, 1);
  }
  while ((snd_cs46xx_peekBA0(chip, BA0_MIDSR) & MIDSR_TBF) == 0) {
   if ((chip->midcr & MIDCR_TIE) == 0)
    break;
   if (snd_rawmidi_transmit(chip->midi_output, &c, 1) != 1) {
    chip->midcr &= ~MIDCR_TIE;
    snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
    break;
   }
   snd_cs46xx_pokeBA0(chip, BA0_MIDWP, c);
  }
  spin_unlock(&chip->reg_lock);
 }



 snd_cs46xx_pokeBA0(chip, BA0_HICR, HICR_CHGM | HICR_IEV);

 return IRQ_HANDLED;
}
