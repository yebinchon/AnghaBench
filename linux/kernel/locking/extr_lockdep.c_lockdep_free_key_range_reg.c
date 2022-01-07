
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending_free {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;


 int __lockdep_free_key_range (struct pending_free*,void*,unsigned long) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int call_rcu_zapped (struct pending_free*) ;
 TYPE_1__* current ;
 struct pending_free* get_pending_free () ;
 int init_data_structures_once () ;
 int lockdep_lock ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int synchronize_rcu () ;

__attribute__((used)) static void lockdep_free_key_range_reg(void *start, unsigned long size)
{
 struct pending_free *pf;
 unsigned long flags;

 init_data_structures_once();

 raw_local_irq_save(flags);
 arch_spin_lock(&lockdep_lock);
 current->lockdep_recursion = 1;
 pf = get_pending_free();
 __lockdep_free_key_range(pf, start, size);
 call_rcu_zapped(pf);
 current->lockdep_recursion = 0;
 arch_spin_unlock(&lockdep_lock);
 raw_local_irq_restore(flags);





 synchronize_rcu();
}
