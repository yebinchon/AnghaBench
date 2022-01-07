
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int wcreg; scalar_t__ iobase; } ;


 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 int RME32_WCR_PD ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void snd_rme32_reset_dac(struct rme32 *rme32)
{
        writel(rme32->wcreg | RME32_WCR_PD,
               rme32->iobase + RME32_IO_CONTROL_REGISTER);
        writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
}
