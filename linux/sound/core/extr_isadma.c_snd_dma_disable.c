
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (unsigned long) ;
 int disable_dma (unsigned long) ;
 int release_dma_lock (unsigned long) ;

void snd_dma_disable(unsigned long dma)
{
 unsigned long flags;

 flags = claim_dma_lock();
 clear_dma_ff(dma);
 disable_dma(dma);
 release_dma_lock(flags);
}
