
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_free {int dummy; } ;
struct lockdep_map {int dummy; } ;


 int __lockdep_reset_lock (struct pending_free*,struct lockdep_map*) ;
 int call_rcu_zapped (struct pending_free*) ;
 struct pending_free* get_pending_free () ;
 int graph_lock () ;
 int graph_unlock () ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static void lockdep_reset_lock_reg(struct lockdep_map *lock)
{
 struct pending_free *pf;
 unsigned long flags;
 int locked;

 raw_local_irq_save(flags);
 locked = graph_lock();
 if (!locked)
  goto out_irq;

 pf = get_pending_free();
 __lockdep_reset_lock(pf, lock);
 call_rcu_zapped(pf);

 graph_unlock();
out_irq:
 raw_local_irq_restore(flags);
}
