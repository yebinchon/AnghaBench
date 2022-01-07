
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int owner_lock; scalar_t__ klocked; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void queue_access_unlock(struct snd_seq_queue *q)
{
 unsigned long flags;

 spin_lock_irqsave(&q->owner_lock, flags);
 q->klocked = 0;
 spin_unlock_irqrestore(&q->owner_lock, flags);
}
