
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_spinlock {scalar_t__ locked; int * next; } ;


 int WRITE_ONCE (int *,struct mcs_spinlock*) ;
 int arch_mcs_spin_lock_contended (scalar_t__*) ;
 scalar_t__ likely (int ) ;
 struct mcs_spinlock* xchg (struct mcs_spinlock**,struct mcs_spinlock*) ;

__attribute__((used)) static inline
void mcs_spin_lock(struct mcs_spinlock **lock, struct mcs_spinlock *node)
{
 struct mcs_spinlock *prev;


 node->locked = 0;
 node->next = ((void*)0);







 prev = xchg(lock, node);
 if (likely(prev == ((void*)0))) {
  return;
 }
 WRITE_ONCE(prev->next, node);


 arch_mcs_spin_lock_contended(&node->locked);
}
