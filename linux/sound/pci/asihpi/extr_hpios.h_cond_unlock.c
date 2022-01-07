
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpios_spinlock {scalar_t__ lock_context; int lock; } ;


 scalar_t__ IN_LOCK_BH ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void cond_unlock(struct hpios_spinlock *l)
{
 if (l->lock_context == IN_LOCK_BH)
  spin_unlock_bh(&((l)->lock));
 else
  spin_unlock(&((l)->lock));
}
