
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {int refcount; int bio_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int drop_refcount(struct dio *dio)
{
 int ret2;
 unsigned long flags;
 spin_lock_irqsave(&dio->bio_lock, flags);
 ret2 = --dio->refcount;
 spin_unlock_irqrestore(&dio->bio_lock, flags);
 return ret2;
}
