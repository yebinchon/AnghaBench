
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {unsigned long gp_seq_needed; struct rcu_node* parent; int gp_seq; } ;
struct rcu_data {unsigned long gp_seq_needed; } ;
struct TYPE_2__ {int gp_flags; int gp_seq; int name; int gp_kthread; int gp_req_activity; } ;


 int RCU_GP_FLAG_INIT ;
 int READ_ONCE (int ) ;
 int TPS (char*) ;
 scalar_t__ ULONG_CMP_GE (unsigned long,unsigned long) ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int WRITE_ONCE (int,int) ;
 int jiffies ;
 int raw_lockdep_assert_held_rcu_node (struct rcu_node*) ;
 int raw_spin_lock_rcu_node (struct rcu_node*) ;
 int raw_spin_unlock_rcu_node (struct rcu_node*) ;
 scalar_t__ rcu_gp_in_progress () ;
 int rcu_seq_current (int *) ;
 scalar_t__ rcu_seq_started (int *,unsigned long) ;
 scalar_t__ rcu_seq_state (int ) ;
 TYPE_1__ rcu_state ;
 int trace_rcu_grace_period (int ,int ,int ) ;
 int trace_rcu_this_gp (struct rcu_node*,struct rcu_data*,unsigned long,int ) ;

__attribute__((used)) static bool rcu_start_this_gp(struct rcu_node *rnp_start, struct rcu_data *rdp,
         unsigned long gp_seq_req)
{
 bool ret = 0;
 struct rcu_node *rnp;
 raw_lockdep_assert_held_rcu_node(rnp_start);
 trace_rcu_this_gp(rnp_start, rdp, gp_seq_req, TPS("Startleaf"));
 for (rnp = rnp_start; 1; rnp = rnp->parent) {
  if (rnp != rnp_start)
   raw_spin_lock_rcu_node(rnp);
  if (ULONG_CMP_GE(rnp->gp_seq_needed, gp_seq_req) ||
      rcu_seq_started(&rnp->gp_seq, gp_seq_req) ||
      (rnp != rnp_start &&
       rcu_seq_state(rcu_seq_current(&rnp->gp_seq)))) {
   trace_rcu_this_gp(rnp, rdp, gp_seq_req,
       TPS("Prestarted"));
   goto unlock_out;
  }
  rnp->gp_seq_needed = gp_seq_req;
  if (rcu_seq_state(rcu_seq_current(&rnp->gp_seq))) {






   trace_rcu_this_gp(rnp_start, rdp, gp_seq_req,
       TPS("Startedleaf"));
   goto unlock_out;
  }
  if (rnp != rnp_start && rnp->parent != ((void*)0))
   raw_spin_unlock_rcu_node(rnp);
  if (!rnp->parent)
   break;
 }


 if (rcu_gp_in_progress()) {
  trace_rcu_this_gp(rnp, rdp, gp_seq_req, TPS("Startedleafroot"));
  goto unlock_out;
 }
 trace_rcu_this_gp(rnp, rdp, gp_seq_req, TPS("Startedroot"));
 WRITE_ONCE(rcu_state.gp_flags, rcu_state.gp_flags | RCU_GP_FLAG_INIT);
 rcu_state.gp_req_activity = jiffies;
 if (!rcu_state.gp_kthread) {
  trace_rcu_this_gp(rnp, rdp, gp_seq_req, TPS("NoGPkthread"));
  goto unlock_out;
 }
 trace_rcu_grace_period(rcu_state.name, READ_ONCE(rcu_state.gp_seq), TPS("newreq"));
 ret = 1;
unlock_out:

 if (ULONG_CMP_LT(gp_seq_req, rnp->gp_seq_needed)) {
  rnp_start->gp_seq_needed = rnp->gp_seq_needed;
  rdp->gp_seq_needed = rnp->gp_seq_needed;
 }
 if (rnp != rnp_start)
  raw_spin_unlock_rcu_node(rnp);
 return ret;
}
