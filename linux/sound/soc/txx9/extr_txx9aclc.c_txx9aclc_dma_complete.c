
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_dmadata {scalar_t__ frag_count; scalar_t__ dmacount; int dma_lock; int tasklet; } ;


 int WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void txx9aclc_dma_complete(void *arg)
{
 struct txx9aclc_dmadata *dmadata = arg;
 unsigned long flags;


 spin_lock_irqsave(&dmadata->dma_lock, flags);
 if (dmadata->frag_count >= 0) {
  dmadata->dmacount--;
  if (!WARN_ON(dmadata->dmacount < 0))
   tasklet_schedule(&dmadata->tasklet);
 }
 spin_unlock_irqrestore(&dmadata->dma_lock, flags);
}
