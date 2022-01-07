
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {scalar_t__ gp_seq; } ;
struct rcu_data {scalar_t__ rcu_iw_gp_seq; int gpwrap; int gp_seq; } ;


 scalar_t__ ULONG_CMP_LT (scalar_t__,scalar_t__) ;
 int ULONG_MAX ;
 int WRITE_ONCE (int ,int) ;
 int raw_lockdep_assert_held_rcu_node (struct rcu_node*) ;
 scalar_t__ rcu_seq_current (int *) ;

__attribute__((used)) static void rcu_gpnum_ovf(struct rcu_node *rnp, struct rcu_data *rdp)
{
 raw_lockdep_assert_held_rcu_node(rnp);
 if (ULONG_CMP_LT(rcu_seq_current(&rdp->gp_seq) + ULONG_MAX / 4,
    rnp->gp_seq))
  WRITE_ONCE(rdp->gpwrap, 1);
 if (ULONG_CMP_LT(rdp->rcu_iw_gp_seq + ULONG_MAX / 4, rnp->gp_seq))
  rdp->rcu_iw_gp_seq = rnp->gp_seq + ULONG_MAX / 4;
}
