
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpios_spinlock {int lock_context; int lock; } ;


 int IN_LOCK_BH ;
 int IN_LOCK_IRQ ;
 scalar_t__ irqs_disabled () ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;

__attribute__((used)) static inline void cond_lock(struct hpios_spinlock *l)
{
 if (irqs_disabled()) {



  spin_lock(&((l)->lock));
  l->lock_context = IN_LOCK_IRQ;
 } else {
  spin_lock_bh(&((l)->lock));
  l->lock_context = IN_LOCK_BH;
 }
}
