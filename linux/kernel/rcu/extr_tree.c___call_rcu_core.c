
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_head {int dummy; } ;
struct rcu_data {scalar_t__ qlen_last_fqs_check; scalar_t__ n_force_qs_snap; int cblist; int blimit; int mynode; } ;
struct TYPE_2__ {scalar_t__ n_force_qs; } ;


 int DEFAULT_MAX_RCU_BLIMIT ;
 scalar_t__ cpu_is_offline (int ) ;
 int invoke_rcu_core () ;
 scalar_t__ irqs_disabled_flags (unsigned long) ;
 int note_gp_changes (struct rcu_data*) ;
 scalar_t__ qhimark ;
 int rcu_accelerate_cbs_unlocked (int ,struct rcu_data*) ;
 int rcu_force_quiescent_state () ;
 int rcu_gp_in_progress () ;
 int rcu_is_watching () ;
 struct rcu_head* rcu_segcblist_first_pend_cb (int *) ;
 scalar_t__ rcu_segcblist_n_cbs (int *) ;
 TYPE_1__ rcu_state ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __call_rcu_core(struct rcu_data *rdp, struct rcu_head *head,
       unsigned long flags)
{




 if (!rcu_is_watching())
  invoke_rcu_core();


 if (irqs_disabled_flags(flags) || cpu_is_offline(smp_processor_id()))
  return;
 if (unlikely(rcu_segcblist_n_cbs(&rdp->cblist) >
       rdp->qlen_last_fqs_check + qhimark)) {


  note_gp_changes(rdp);


  if (!rcu_gp_in_progress()) {
   rcu_accelerate_cbs_unlocked(rdp->mynode, rdp);
  } else {

   rdp->blimit = DEFAULT_MAX_RCU_BLIMIT;
   if (rcu_state.n_force_qs == rdp->n_force_qs_snap &&
       rcu_segcblist_first_pend_cb(&rdp->cblist) != head)
    rcu_force_quiescent_state();
   rdp->n_force_qs_snap = rcu_state.n_force_qs;
   rdp->qlen_last_fqs_check = rcu_segcblist_n_cbs(&rdp->cblist);
  }
 }
}
