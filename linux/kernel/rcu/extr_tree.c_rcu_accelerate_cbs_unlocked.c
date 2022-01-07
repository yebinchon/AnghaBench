
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {int dummy; } ;
struct rcu_data {int cblist; int gp_seq_needed; int gpwrap; } ;
struct TYPE_2__ {int gp_seq; } ;


 scalar_t__ ULONG_CMP_GE (int ,unsigned long) ;
 int raw_spin_lock_rcu_node (struct rcu_node*) ;
 int raw_spin_unlock_rcu_node (struct rcu_node*) ;
 int rcu_accelerate_cbs (struct rcu_node*,struct rcu_data*) ;
 int rcu_gp_kthread_wake () ;
 int rcu_lockdep_assert_cblist_protected (struct rcu_data*) ;
 int rcu_segcblist_accelerate (int *,unsigned long) ;
 unsigned long rcu_seq_snap (int *) ;
 TYPE_1__ rcu_state ;

__attribute__((used)) static void rcu_accelerate_cbs_unlocked(struct rcu_node *rnp,
     struct rcu_data *rdp)
{
 unsigned long c;
 bool needwake;

 rcu_lockdep_assert_cblist_protected(rdp);
 c = rcu_seq_snap(&rcu_state.gp_seq);
 if (!rdp->gpwrap && ULONG_CMP_GE(rdp->gp_seq_needed, c)) {

  (void)rcu_segcblist_accelerate(&rdp->cblist, c);
  return;
 }
 raw_spin_lock_rcu_node(rnp);
 needwake = rcu_accelerate_cbs(rnp, rdp);
 raw_spin_unlock_rcu_node(rnp);
 if (needwake)
  rcu_gp_kthread_wake();
}
