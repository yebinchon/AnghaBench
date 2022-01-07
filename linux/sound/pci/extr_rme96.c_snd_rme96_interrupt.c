
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int rcreg; scalar_t__ iobase; int capture_substream; int playback_substream; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ RME96_IO_CONFIRM_PLAY_IRQ ;
 scalar_t__ RME96_IO_CONFIRM_REC_IRQ ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_RCR_IRQ ;
 int RME96_RCR_IRQ_2 ;
 int readl (scalar_t__) ;
 int snd_pcm_period_elapsed (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t
snd_rme96_interrupt(int irq,
      void *dev_id)
{
 struct rme96 *rme96 = (struct rme96 *)dev_id;

 rme96->rcreg = readl(rme96->iobase + RME96_IO_CONTROL_REGISTER);

 if (!((rme96->rcreg & RME96_RCR_IRQ) ||
       (rme96->rcreg & RME96_RCR_IRQ_2)))
 {
  return IRQ_NONE;
 }

 if (rme96->rcreg & RME96_RCR_IRQ) {

                snd_pcm_period_elapsed(rme96->playback_substream);
  writel(0, rme96->iobase + RME96_IO_CONFIRM_PLAY_IRQ);
 }
 if (rme96->rcreg & RME96_RCR_IRQ_2) {

  snd_pcm_period_elapsed(rme96->capture_substream);
  writel(0, rme96->iobase + RME96_IO_CONFIRM_REC_IRQ);
 }
 return IRQ_HANDLED;
}
