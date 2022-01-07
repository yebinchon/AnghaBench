
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct snd_emu10k1_voice {TYPE_1__* epcm; scalar_t__ use; int (* interrupt ) (struct snd_emu10k1*,struct snd_emu10k1_voice*) ;} ;
struct TYPE_9__ {int (* interrupt ) (struct snd_emu10k1*,unsigned int) ;} ;
struct TYPE_8__ {int (* interrupt ) (struct snd_emu10k1*,unsigned int) ;} ;
struct snd_emu10k1 {TYPE_2__* card; scalar_t__ port; scalar_t__ audigy; struct snd_emu10k1_voice p16v_capture_voice; struct snd_emu10k1_voice* p16v_voices; int (* dsp_interrupt ) (struct snd_emu10k1*) ;int (* spdif_interrupt ) (struct snd_emu10k1*,unsigned int) ;TYPE_5__* timer; TYPE_4__ midi2; TYPE_3__ midi; int (* capture_efx_interrupt ) (struct snd_emu10k1*,unsigned int) ;int (* capture_mic_interrupt ) (struct snd_emu10k1*,unsigned int) ;int (* capture_interrupt ) (struct snd_emu10k1*,unsigned int) ;struct snd_emu10k1_voice* voices; int (* hwvol_interrupt ) (struct snd_emu10k1*,unsigned int) ;} ;
typedef int irqreturn_t ;
struct TYPE_10__ {int sticks; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int substream; } ;


 int CLIPH ;
 int CLIPL ;
 int HLIPH ;
 int HLIPL ;
 int INTE2_PLAYBACK_CH_0_LOOP ;
 unsigned int INTE_ADCBUFENABLE ;
 unsigned int INTE_A_MIDIRXENABLE2 ;
 unsigned int INTE_A_MIDITXENABLE2 ;
 unsigned int INTE_CDSPDIFENABLE ;
 unsigned int INTE_EFXBUFENABLE ;
 unsigned int INTE_FXDSPENABLE ;
 unsigned int INTE_GPSPDIFENABLE ;
 unsigned int INTE_INTERVALTIMERENB ;
 unsigned int INTE_MICBUFENABLE ;
 unsigned int INTE_MIDIRXENABLE ;
 unsigned int INTE_MIDITXENABLE ;
 unsigned int INTE_MUTEENABLE ;
 unsigned int INTE_PCIERRORENABLE ;
 unsigned int INTE_VOLDECRENABLE ;
 unsigned int INTE_VOLINCRENABLE ;
 scalar_t__ IPR ;
 scalar_t__ IPR2 ;
 unsigned int IPR_ADCBUFFULL ;
 unsigned int IPR_ADCBUFHALFFULL ;
 unsigned int IPR_A_MIDIRECVBUFEMPTY2 ;
 unsigned int IPR_A_MIDITRANSBUFEMPTY2 ;
 unsigned int IPR_CDROMSTATUSCHANGE ;
 unsigned int IPR_CHANNELLOOP ;
 unsigned int IPR_CHANNELNUMBERMASK ;
 unsigned int IPR_EFXBUFFULL ;
 unsigned int IPR_EFXBUFHALFFULL ;
 unsigned int IPR_FXDSP ;
 unsigned int IPR_GPSPDIFSTATUSCHANGE ;
 unsigned int IPR_INTERVALTIMER ;
 unsigned int IPR_MICBUFFULL ;
 unsigned int IPR_MICBUFHALFFULL ;
 unsigned int IPR_MIDIRECVBUFEMPTY ;
 unsigned int IPR_MIDITRANSBUFEMPTY ;
 unsigned int IPR_MUTE ;
 unsigned int IPR_P16V ;
 unsigned int IPR_PCIERROR ;
 unsigned int IPR_VOLDECR ;
 unsigned int IPR_VOLINCR ;
 int IRQ_RETVAL (int) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,unsigned int) ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_voice_half_loop_intr_ack (struct snd_emu10k1*,int) ;
 int snd_emu10k1_voice_half_loop_intr_disable (struct snd_emu10k1*,int) ;
 int snd_emu10k1_voice_intr_ack (struct snd_emu10k1*,int) ;
 int snd_emu10k1_voice_intr_disable (struct snd_emu10k1*,int) ;
 int snd_pcm_period_elapsed (int ) ;
 int snd_timer_interrupt (TYPE_5__*,int ) ;
 int stub1 (struct snd_emu10k1*,unsigned int) ;
 int stub10 (struct snd_emu10k1*) ;
 int stub2 (struct snd_emu10k1*,struct snd_emu10k1_voice*) ;
 int stub3 (struct snd_emu10k1*,struct snd_emu10k1_voice*) ;
 int stub4 (struct snd_emu10k1*,unsigned int) ;
 int stub5 (struct snd_emu10k1*,unsigned int) ;
 int stub6 (struct snd_emu10k1*,unsigned int) ;
 int stub7 (struct snd_emu10k1*,unsigned int) ;
 int stub8 (struct snd_emu10k1*,unsigned int) ;
 int stub9 (struct snd_emu10k1*,unsigned int) ;

irqreturn_t snd_emu10k1_interrupt(int irq, void *dev_id)
{
 struct snd_emu10k1 *emu = dev_id;
 unsigned int status, status2, orig_status, orig_status2;
 int handled = 0;
 int timeout = 0;

 while (((status = inl(emu->port + IPR)) != 0) && (timeout < 1000)) {
  timeout++;
  orig_status = status;
  handled = 1;
  if ((status & 0xffffffff) == 0xffffffff) {
   dev_info(emu->card->dev,
     "Suspected sound card removal\n");
   break;
  }
  if (status & IPR_PCIERROR) {
   dev_err(emu->card->dev, "interrupt: PCI error\n");
   snd_emu10k1_intr_disable(emu, INTE_PCIERRORENABLE);
   status &= ~IPR_PCIERROR;
  }
  if (status & (IPR_VOLINCR|IPR_VOLDECR|IPR_MUTE)) {
   if (emu->hwvol_interrupt)
    emu->hwvol_interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_VOLINCRENABLE|INTE_VOLDECRENABLE|INTE_MUTEENABLE);
   status &= ~(IPR_VOLINCR|IPR_VOLDECR|IPR_MUTE);
  }
  if (status & IPR_CHANNELLOOP) {
   int voice;
   int voice_max = status & IPR_CHANNELNUMBERMASK;
   u32 val;
   struct snd_emu10k1_voice *pvoice = emu->voices;

   val = snd_emu10k1_ptr_read(emu, CLIPL, 0);
   for (voice = 0; voice <= voice_max; voice++) {
    if (voice == 0x20)
     val = snd_emu10k1_ptr_read(emu, CLIPH, 0);
    if (val & 1) {
     if (pvoice->use && pvoice->interrupt != ((void*)0)) {
      pvoice->interrupt(emu, pvoice);
      snd_emu10k1_voice_intr_ack(emu, voice);
     } else {
      snd_emu10k1_voice_intr_disable(emu, voice);
     }
    }
    val >>= 1;
    pvoice++;
   }
   val = snd_emu10k1_ptr_read(emu, HLIPL, 0);
   for (voice = 0; voice <= voice_max; voice++) {
    if (voice == 0x20)
     val = snd_emu10k1_ptr_read(emu, HLIPH, 0);
    if (val & 1) {
     if (pvoice->use && pvoice->interrupt != ((void*)0)) {
      pvoice->interrupt(emu, pvoice);
      snd_emu10k1_voice_half_loop_intr_ack(emu, voice);
     } else {
      snd_emu10k1_voice_half_loop_intr_disable(emu, voice);
     }
    }
    val >>= 1;
    pvoice++;
   }
   status &= ~IPR_CHANNELLOOP;
  }
  status &= ~IPR_CHANNELNUMBERMASK;
  if (status & (IPR_ADCBUFFULL|IPR_ADCBUFHALFFULL)) {
   if (emu->capture_interrupt)
    emu->capture_interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_ADCBUFENABLE);
   status &= ~(IPR_ADCBUFFULL|IPR_ADCBUFHALFFULL);
  }
  if (status & (IPR_MICBUFFULL|IPR_MICBUFHALFFULL)) {
   if (emu->capture_mic_interrupt)
    emu->capture_mic_interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_MICBUFENABLE);
   status &= ~(IPR_MICBUFFULL|IPR_MICBUFHALFFULL);
  }
  if (status & (IPR_EFXBUFFULL|IPR_EFXBUFHALFFULL)) {
   if (emu->capture_efx_interrupt)
    emu->capture_efx_interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_EFXBUFENABLE);
   status &= ~(IPR_EFXBUFFULL|IPR_EFXBUFHALFFULL);
  }
  if (status & (IPR_MIDITRANSBUFEMPTY|IPR_MIDIRECVBUFEMPTY)) {
   if (emu->midi.interrupt)
    emu->midi.interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_MIDITXENABLE|INTE_MIDIRXENABLE);
   status &= ~(IPR_MIDITRANSBUFEMPTY|IPR_MIDIRECVBUFEMPTY);
  }
  if (status & (IPR_A_MIDITRANSBUFEMPTY2|IPR_A_MIDIRECVBUFEMPTY2)) {
   if (emu->midi2.interrupt)
    emu->midi2.interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_A_MIDITXENABLE2|INTE_A_MIDIRXENABLE2);
   status &= ~(IPR_A_MIDITRANSBUFEMPTY2|IPR_A_MIDIRECVBUFEMPTY2);
  }
  if (status & IPR_INTERVALTIMER) {
   if (emu->timer)
    snd_timer_interrupt(emu->timer, emu->timer->sticks);
   else
    snd_emu10k1_intr_disable(emu, INTE_INTERVALTIMERENB);
   status &= ~IPR_INTERVALTIMER;
  }
  if (status & (IPR_GPSPDIFSTATUSCHANGE|IPR_CDROMSTATUSCHANGE)) {
   if (emu->spdif_interrupt)
    emu->spdif_interrupt(emu, status);
   else
    snd_emu10k1_intr_disable(emu, INTE_GPSPDIFENABLE|INTE_CDSPDIFENABLE);
   status &= ~(IPR_GPSPDIFSTATUSCHANGE|IPR_CDROMSTATUSCHANGE);
  }
  if (status & IPR_FXDSP) {
   if (emu->dsp_interrupt)
    emu->dsp_interrupt(emu);
   else
    snd_emu10k1_intr_disable(emu, INTE_FXDSPENABLE);
   status &= ~IPR_FXDSP;
  }
  if (status & IPR_P16V) {
   while ((status2 = inl(emu->port + IPR2)) != 0) {
    u32 mask = INTE2_PLAYBACK_CH_0_LOOP;
    struct snd_emu10k1_voice *pvoice = &(emu->p16v_voices[0]);
    struct snd_emu10k1_voice *cvoice = &(emu->p16v_capture_voice);


    orig_status2 = status2;
    if(status2 & mask) {
     if(pvoice->use) {
      snd_pcm_period_elapsed(pvoice->epcm->substream);
     } else {
      dev_err(emu->card->dev,
       "p16v: status: 0x%08x, mask=0x%08x, pvoice=%p, use=%d\n",
       status2, mask, pvoice,
       pvoice->use);
     }
    }
    if(status2 & 0x110000) {

     if(cvoice->use) {

      snd_pcm_period_elapsed(cvoice->epcm->substream);
     }
    }
    outl(orig_status2, emu->port + IPR2);
   }
   status &= ~IPR_P16V;
  }

  if (status) {
   unsigned int bits;
   dev_err(emu->card->dev,
    "unhandled interrupt: 0x%08x\n", status);

   bits = INTE_FXDSPENABLE |
    INTE_PCIERRORENABLE |
    INTE_VOLINCRENABLE |
    INTE_VOLDECRENABLE |
    INTE_MUTEENABLE |
    INTE_MICBUFENABLE |
    INTE_ADCBUFENABLE |
    INTE_EFXBUFENABLE |
    INTE_GPSPDIFENABLE |
    INTE_CDSPDIFENABLE |
    INTE_INTERVALTIMERENB |
    INTE_MIDITXENABLE |
    INTE_MIDIRXENABLE;
   if (emu->audigy)
    bits |= INTE_A_MIDITXENABLE2 | INTE_A_MIDIRXENABLE2;
   snd_emu10k1_intr_disable(emu, bits);
  }
  outl(orig_status, emu->port + IPR);
 }
 if (timeout == 1000)
  dev_info(emu->card->dev, "emu10k1 irq routine failure\n");

 return IRQ_RETVAL(handled);
}
