
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (unsigned long) ;
 int disable_dma (unsigned long) ;
 int enable_dma (unsigned long) ;
 unsigned int get_dma_residue (unsigned long) ;
 int isa_dma_bridge_buggy ;
 int pr_err (char*,unsigned int,unsigned long,unsigned int) ;
 int release_dma_lock (unsigned long) ;
 scalar_t__ unlikely (int) ;

unsigned int snd_dma_pointer(unsigned long dma, unsigned int size)
{
 unsigned long flags;
 unsigned int result, result1;

 flags = claim_dma_lock();
 clear_dma_ff(dma);
 if (!isa_dma_bridge_buggy)
  disable_dma(dma);
 result = get_dma_residue(dma);





 result1 = get_dma_residue(dma);
 if (!isa_dma_bridge_buggy)
  enable_dma(dma);
 release_dma_lock(flags);
 if (unlikely(result < result1))
  result = result1;




 if (result >= size || result == 0)
  return 0;
 else
  return size - result;
}
