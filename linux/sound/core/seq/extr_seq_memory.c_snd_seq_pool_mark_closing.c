
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int closing; int lock; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_pool_mark_closing(struct snd_seq_pool *pool)
{
 unsigned long flags;

 if (snd_BUG_ON(!pool))
  return;
 spin_lock_irqsave(&pool->lock, flags);
 pool->closing = 1;
 spin_unlock_irqrestore(&pool->lock, flags);
}
