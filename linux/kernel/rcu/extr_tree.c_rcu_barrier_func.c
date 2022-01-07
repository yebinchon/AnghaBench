
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int func; } ;
struct rcu_data {TYPE_2__ barrier_head; int cblist; } ;
struct TYPE_5__ {int barrier_sequence; int barrier_cpu_count; } ;


 int TPS (char*) ;
 int WARN_ON_ONCE (int) ;
 int atomic_inc (int *) ;
 int debug_rcu_head_queue (TYPE_2__*) ;
 int debug_rcu_head_unqueue (TYPE_2__*) ;
 int jiffies ;
 struct rcu_data* raw_cpu_ptr (int *) ;
 int rcu_barrier_callback ;
 int rcu_barrier_trace (int ,int,int ) ;
 int rcu_data ;
 int rcu_nocb_flush_bypass (struct rcu_data*,int *,int ) ;
 int rcu_nocb_lock (struct rcu_data*) ;
 int rcu_nocb_unlock (struct rcu_data*) ;
 scalar_t__ rcu_segcblist_entrain (int *,TYPE_2__*,int ) ;
 TYPE_1__ rcu_state ;

__attribute__((used)) static void rcu_barrier_func(void *unused)
{
 struct rcu_data *rdp = raw_cpu_ptr(&rcu_data);

 rcu_barrier_trace(TPS("IRQ"), -1, rcu_state.barrier_sequence);
 rdp->barrier_head.func = rcu_barrier_callback;
 debug_rcu_head_queue(&rdp->barrier_head);
 rcu_nocb_lock(rdp);
 WARN_ON_ONCE(!rcu_nocb_flush_bypass(rdp, ((void*)0), jiffies));
 if (rcu_segcblist_entrain(&rdp->cblist, &rdp->barrier_head, 0)) {
  atomic_inc(&rcu_state.barrier_cpu_count);
 } else {
  debug_rcu_head_unqueue(&rdp->barrier_head);
  rcu_barrier_trace(TPS("IRQNQ"), -1,
       rcu_state.barrier_sequence);
 }
 rcu_nocb_unlock(rdp);
}
