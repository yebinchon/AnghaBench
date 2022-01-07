
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {scalar_t__ iobase; int areg; int wcreg; } ;


 int EINVAL ;
 int RME96_AR_WSEL ;



 scalar_t__ RME96_IO_ADDITIONAL_REG ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_MASTER ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_setclockmode(struct rme96 *rme96,
         int mode)
{
 switch (mode) {
 case 129:

  rme96->wcreg &= ~RME96_WCR_MASTER;
  rme96->areg &= ~RME96_AR_WSEL;
  break;
 case 130:

  rme96->wcreg |= RME96_WCR_MASTER;
  rme96->areg &= ~RME96_AR_WSEL;
  break;
 case 128:

  rme96->wcreg |= RME96_WCR_MASTER;
  rme96->areg |= RME96_AR_WSEL;
  break;
 default:
  return -EINVAL;
 }
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
 return 0;
}
