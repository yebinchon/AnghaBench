
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_spinlock {int locked; int next; } ;


 struct mcs_spinlock* READ_ONCE (int ) ;
 int arch_mcs_spin_unlock_contended (int *) ;
 struct mcs_spinlock* cmpxchg_release (struct mcs_spinlock**,struct mcs_spinlock*,int *) ;
 int cpu_relax () ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline
void mcs_spin_unlock(struct mcs_spinlock **lock, struct mcs_spinlock *node)
{
 struct mcs_spinlock *next = READ_ONCE(node->next);

 if (likely(!next)) {



  if (likely(cmpxchg_release(lock, node, ((void*)0)) == node))
   return;

  while (!(next = READ_ONCE(node->next)))
   cpu_relax();
 }


 arch_mcs_spin_unlock_contended(&next->locked);
}
