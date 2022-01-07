
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {int dummy; } ;
struct rcu_data {int gp_seq; int cblist; } ;
struct TYPE_2__ {int name; int gp_seq; } ;


 int RCU_WAIT_TAIL ;
 int TPS (char*) ;
 int raw_lockdep_assert_held_rcu_node (struct rcu_node*) ;
 int rcu_lockdep_assert_cblist_protected (struct rcu_data*) ;
 scalar_t__ rcu_segcblist_accelerate (int *,unsigned long) ;
 int rcu_segcblist_pend_cbs (int *) ;
 scalar_t__ rcu_segcblist_restempty (int *,int ) ;
 unsigned long rcu_seq_snap (int *) ;
 int rcu_start_this_gp (struct rcu_node*,struct rcu_data*,unsigned long) ;
 TYPE_1__ rcu_state ;
 int trace_rcu_grace_period (int ,int ,int ) ;

__attribute__((used)) static bool rcu_accelerate_cbs(struct rcu_node *rnp, struct rcu_data *rdp)
{
 unsigned long gp_seq_req;
 bool ret = 0;

 rcu_lockdep_assert_cblist_protected(rdp);
 raw_lockdep_assert_held_rcu_node(rnp);


 if (!rcu_segcblist_pend_cbs(&rdp->cblist))
  return 0;
 gp_seq_req = rcu_seq_snap(&rcu_state.gp_seq);
 if (rcu_segcblist_accelerate(&rdp->cblist, gp_seq_req))
  ret = rcu_start_this_gp(rnp, rdp, gp_seq_req);


 if (rcu_segcblist_restempty(&rdp->cblist, RCU_WAIT_TAIL))
  trace_rcu_grace_period(rcu_state.name, rdp->gp_seq, TPS("AccWaitCB"));
 else
  trace_rcu_grace_period(rcu_state.name, rdp->gp_seq, TPS("AccReadyCB"));
 return ret;
}
