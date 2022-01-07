
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {scalar_t__ iobase; int wcreg; } ;


 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 scalar_t__ RME32_IO_RESET_POS ;
 int RME32_WCR_START ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void snd_rme32_pcm_start(struct rme32 * rme32, int from_pause)
{
 if (!from_pause) {
  writel(0, rme32->iobase + RME32_IO_RESET_POS);
 }

 rme32->wcreg |= RME32_WCR_START;
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
}
