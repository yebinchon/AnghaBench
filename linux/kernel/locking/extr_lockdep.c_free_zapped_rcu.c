
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcu_head {int dummy; } ;
struct pending_free {int dummy; } ;
struct TYPE_4__ {int lockdep_recursion; } ;
struct TYPE_3__ {int index; int scheduled; struct pending_free* pf; struct rcu_head rcu_head; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int __free_zapped_classes (struct pending_free*) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int call_rcu_zapped (struct pending_free*) ;
 TYPE_2__* current ;
 TYPE_1__ delayed_free ;
 int lockdep_lock ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static void free_zapped_rcu(struct rcu_head *ch)
{
 struct pending_free *pf;
 unsigned long flags;

 if (WARN_ON_ONCE(ch != &delayed_free.rcu_head))
  return;

 raw_local_irq_save(flags);
 arch_spin_lock(&lockdep_lock);
 current->lockdep_recursion = 1;


 pf = delayed_free.pf + (delayed_free.index ^ 1);
 __free_zapped_classes(pf);
 delayed_free.scheduled = 0;




 call_rcu_zapped(delayed_free.pf + delayed_free.index);

 current->lockdep_recursion = 0;
 arch_spin_unlock(&lockdep_lock);
 raw_local_irq_restore(flags);
}
