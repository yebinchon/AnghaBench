
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {int gp_seq; } ;
struct rcu_data {int cblist; } ;


 int raw_lockdep_assert_held_rcu_node (struct rcu_node*) ;
 int rcu_accelerate_cbs (struct rcu_node*,struct rcu_data*) ;
 int rcu_lockdep_assert_cblist_protected (struct rcu_data*) ;
 int rcu_segcblist_advance (int *,int ) ;
 int rcu_segcblist_pend_cbs (int *) ;

__attribute__((used)) static bool rcu_advance_cbs(struct rcu_node *rnp, struct rcu_data *rdp)
{
 rcu_lockdep_assert_cblist_protected(rdp);
 raw_lockdep_assert_held_rcu_node(rnp);


 if (!rcu_segcblist_pend_cbs(&rdp->cblist))
  return 0;





 rcu_segcblist_advance(&rdp->cblist, rnp->gp_seq);


 return rcu_accelerate_cbs(rnp, rdp);
}
