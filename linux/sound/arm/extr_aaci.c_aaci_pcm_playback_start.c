
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aaci_runtime {int cr; scalar_t__ base; } ;


 scalar_t__ AACI_IE ;
 scalar_t__ AACI_TXCR ;
 int CR_EN ;
 int IE_TXIE ;
 int IE_URIE ;
 int SR_TXB ;
 int aaci_chan_wait_ready (struct aaci_runtime*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void aaci_pcm_playback_start(struct aaci_runtime *aacirun)
{
 u32 ie;

 aaci_chan_wait_ready(aacirun, SR_TXB);
 aacirun->cr |= CR_EN;

 ie = readl(aacirun->base + AACI_IE);
 ie |= IE_URIE | IE_TXIE;
 writel(ie, aacirun->base + AACI_IE);
 writel(aacirun->cr, aacirun->base + AACI_TXCR);
}
