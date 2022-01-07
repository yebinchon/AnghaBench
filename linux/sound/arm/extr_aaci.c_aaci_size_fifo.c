
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aaci_runtime {scalar_t__ base; scalar_t__ fifo; } ;
struct aaci {int maincr; scalar_t__ base; struct aaci_runtime playback; } ;


 scalar_t__ AACI_MAINCR ;
 scalar_t__ AACI_SR ;
 scalar_t__ AACI_TXCR ;
 int CR_EN ;
 int CR_FEN ;
 int CR_SZ16 ;
 int MAINCR_IE ;
 int SR_TXFF ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned int aaci_size_fifo(struct aaci *aaci)
{
 struct aaci_runtime *aacirun = &aaci->playback;
 int i;





 writel(CR_FEN | CR_SZ16 | CR_EN, aacirun->base + AACI_TXCR);

 for (i = 0; !(readl(aacirun->base + AACI_SR) & SR_TXFF) && i < 4096; i++)
  writel(0, aacirun->fifo);

 writel(0, aacirun->base + AACI_TXCR);






 writel(aaci->maincr & ~MAINCR_IE, aaci->base + AACI_MAINCR);
 readl(aaci->base + AACI_MAINCR);
 udelay(1);
 writel(aaci->maincr, aaci->base + AACI_MAINCR);





 if (i == 4096)
  i = 8;

 return i;
}
