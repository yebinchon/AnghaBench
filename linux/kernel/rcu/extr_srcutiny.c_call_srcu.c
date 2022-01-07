
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct srcu_struct {TYPE_1__ srcu_work; int srcu_gp_running; struct rcu_head** srcu_cb_tail; } ;
struct rcu_head {struct rcu_head* next; int func; } ;
typedef int rcu_callback_t ;


 int READ_ONCE (int ) ;
 scalar_t__ likely (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int schedule_work (TYPE_1__*) ;
 int srcu_boot_list ;
 int srcu_init_done ;

void call_srcu(struct srcu_struct *ssp, struct rcu_head *rhp,
        rcu_callback_t func)
{
 unsigned long flags;

 rhp->func = func;
 rhp->next = ((void*)0);
 local_irq_save(flags);
 *ssp->srcu_cb_tail = rhp;
 ssp->srcu_cb_tail = &rhp->next;
 local_irq_restore(flags);
 if (!READ_ONCE(ssp->srcu_gp_running)) {
  if (likely(srcu_init_done))
   schedule_work(&ssp->srcu_work);
  else if (list_empty(&ssp->srcu_work.entry))
   list_add(&ssp->srcu_work.entry, &srcu_boot_list);
 }
}
