
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int wcreg; scalar_t__ iobase; } ;


 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_PD ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
snd_rme96_reset_dac(struct rme96 *rme96)
{
 writel(rme96->wcreg | RME96_WCR_PD,
        rme96->iobase + RME96_IO_CONTROL_REGISTER);
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}
