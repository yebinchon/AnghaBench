
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ensoniq {unsigned int sctrl; scalar_t__ playback1_substream; scalar_t__ capture_substream; scalar_t__ playback2_substream; int reg_lock; } ;
typedef int irqreturn_t ;


 unsigned int ES_ADC ;
 unsigned int ES_DAC1 ;
 unsigned int ES_DAC2 ;
 unsigned int ES_INTR ;
 unsigned int ES_P1_INT_EN ;
 unsigned int ES_P2_INT_EN ;
 unsigned int ES_R1_INT_EN ;
 int ES_REG (struct ensoniq*,int ) ;
 unsigned int ES_UART ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SERIAL ;
 int STATUS ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;
 int snd_ensoniq_midi_interrupt (struct ensoniq*) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_audiopci_interrupt(int irq, void *dev_id)
{
 struct ensoniq *ensoniq = dev_id;
 unsigned int status, sctrl;

 if (ensoniq == ((void*)0))
  return IRQ_NONE;

 status = inl(ES_REG(ensoniq, STATUS));
 if (!(status & ES_INTR))
  return IRQ_NONE;

 spin_lock(&ensoniq->reg_lock);
 sctrl = ensoniq->sctrl;
 if (status & ES_DAC1)
  sctrl &= ~ES_P1_INT_EN;
 if (status & ES_DAC2)
  sctrl &= ~ES_P2_INT_EN;
 if (status & ES_ADC)
  sctrl &= ~ES_R1_INT_EN;
 outl(sctrl, ES_REG(ensoniq, SERIAL));
 outl(ensoniq->sctrl, ES_REG(ensoniq, SERIAL));
 spin_unlock(&ensoniq->reg_lock);

 if (status & ES_UART)
  snd_ensoniq_midi_interrupt(ensoniq);
 if ((status & ES_DAC2) && ensoniq->playback2_substream)
  snd_pcm_period_elapsed(ensoniq->playback2_substream);
 if ((status & ES_ADC) && ensoniq->capture_substream)
  snd_pcm_period_elapsed(ensoniq->capture_substream);
 if ((status & ES_DAC1) && ensoniq->playback1_substream)
  snd_pcm_period_elapsed(ensoniq->playback1_substream);
 return IRQ_HANDLED;
}
