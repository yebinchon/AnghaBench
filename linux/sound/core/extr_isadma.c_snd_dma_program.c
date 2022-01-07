
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short DMA_MODE_NO_ENABLE ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (unsigned long) ;
 int disable_dma (unsigned long) ;
 int enable_dma (unsigned long) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (unsigned long,unsigned long) ;
 int set_dma_count (unsigned long,unsigned int) ;
 int set_dma_mode (unsigned long,unsigned short) ;

void snd_dma_program(unsigned long dma,
       unsigned long addr, unsigned int size,
                     unsigned short mode)
{
 unsigned long flags;

 flags = claim_dma_lock();
 disable_dma(dma);
 clear_dma_ff(dma);
 set_dma_mode(dma, mode);
 set_dma_addr(dma, addr);
 set_dma_count(dma, size);
 if (!(mode & DMA_MODE_NO_ENABLE))
  enable_dma(dma);
 release_dma_lock(flags);
}
