
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int rcreg; int wcreg; scalar_t__ iobase; } ;


 scalar_t__ RME32_IO_CONFIRM_ACTION_IRQ ;
 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 scalar_t__ RME32_IO_RESET_POS ;
 int RME32_RCR_IRQ ;
 int RME32_WCR_MUTE ;
 int RME32_WCR_SEL ;
 int RME32_WCR_START ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void snd_rme32_pcm_stop(struct rme32 * rme32, int to_pause)
{




 rme32->rcreg = readl(rme32->iobase + RME32_IO_CONTROL_REGISTER);
 if (rme32->rcreg & RME32_RCR_IRQ) {
  writel(0, rme32->iobase + RME32_IO_CONFIRM_ACTION_IRQ);
 }
 rme32->wcreg &= ~RME32_WCR_START;
 if (rme32->wcreg & RME32_WCR_SEL)
  rme32->wcreg |= RME32_WCR_MUTE;
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
 if (! to_pause)
  writel(0, rme32->iobase + RME32_IO_RESET_POS);
}
