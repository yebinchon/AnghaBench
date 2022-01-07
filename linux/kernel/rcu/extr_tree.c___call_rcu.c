
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_head {int * next; scalar_t__ func; } ;
struct rcu_data {int cblist; } ;
typedef scalar_t__ rcu_callback_t ;
struct TYPE_2__ {int name; } ;


 int CONFIG_RCU_NOCB_CPU ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ RCU_SCHEDULER_INACTIVE ;
 int WARN_ONCE (int,char*,struct rcu_head*,scalar_t__) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (scalar_t__,int ) ;
 int __call_rcu_core (struct rcu_data*,struct rcu_head*,unsigned long) ;
 int __call_rcu_nocb_wake (struct rcu_data*,int,unsigned long) ;
 scalar_t__ __is_kfree_rcu_offset (unsigned long) ;
 scalar_t__ debug_rcu_head_queue (struct rcu_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rcu_data ;
 int rcu_is_watching () ;
 int rcu_leak_callback ;
 scalar_t__ rcu_nocb_try_bypass (struct rcu_data*,struct rcu_head*,int*,unsigned long) ;
 scalar_t__ rcu_scheduler_active ;
 scalar_t__ rcu_segcblist_empty (int *) ;
 int rcu_segcblist_enqueue (int *,struct rcu_head*,int) ;
 int rcu_segcblist_init (int *) ;
 int rcu_segcblist_is_enabled (int *) ;
 int rcu_segcblist_is_offloaded (int *) ;
 int rcu_segcblist_n_cbs (int *) ;
 int rcu_segcblist_n_lazy_cbs (int *) ;
 TYPE_1__ rcu_state ;
 struct rcu_data* this_cpu_ptr (int *) ;
 int trace_rcu_callback (int ,struct rcu_head*,int ,int ) ;
 int trace_rcu_kfree_callback (int ,struct rcu_head*,unsigned long,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
__call_rcu(struct rcu_head *head, rcu_callback_t func, bool lazy)
{
 unsigned long flags;
 struct rcu_data *rdp;
 bool was_alldone;


 WARN_ON_ONCE((unsigned long)head & (sizeof(void *) - 1));

 if (debug_rcu_head_queue(head)) {





  WARN_ONCE(1, "__call_rcu(): Double-freed CB %p->%pS()!!!\n",
     head, head->func);
  WRITE_ONCE(head->func, rcu_leak_callback);
  return;
 }
 head->func = func;
 head->next = ((void*)0);
 local_irq_save(flags);
 rdp = this_cpu_ptr(&rcu_data);


 if (unlikely(!rcu_segcblist_is_enabled(&rdp->cblist))) {

  WARN_ON_ONCE(rcu_scheduler_active != RCU_SCHEDULER_INACTIVE);
  WARN_ON_ONCE(!rcu_is_watching());


  if (rcu_segcblist_empty(&rdp->cblist))
   rcu_segcblist_init(&rdp->cblist);
 }
 if (rcu_nocb_try_bypass(rdp, head, &was_alldone, flags))
  return;

 rcu_segcblist_enqueue(&rdp->cblist, head, lazy);
 if (__is_kfree_rcu_offset((unsigned long)func))
  trace_rcu_kfree_callback(rcu_state.name, head,
      (unsigned long)func,
      rcu_segcblist_n_lazy_cbs(&rdp->cblist),
      rcu_segcblist_n_cbs(&rdp->cblist));
 else
  trace_rcu_callback(rcu_state.name, head,
       rcu_segcblist_n_lazy_cbs(&rdp->cblist),
       rcu_segcblist_n_cbs(&rdp->cblist));


 if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
     unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
  __call_rcu_nocb_wake(rdp, was_alldone, flags);
 } else {
  __call_rcu_core(rdp, head, flags);
  local_irq_restore(flags);
 }
}
