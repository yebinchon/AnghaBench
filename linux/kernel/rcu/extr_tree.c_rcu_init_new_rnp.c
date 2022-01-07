
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {long grpmask; long qsmaskinit; struct rcu_node* parent; int wait_blkd_tasks; } ;


 int WARN_ON_ONCE (int ) ;
 int raw_lockdep_assert_held_rcu_node (struct rcu_node*) ;
 int raw_spin_lock_rcu_node (struct rcu_node*) ;
 int raw_spin_unlock_rcu_node (struct rcu_node*) ;

__attribute__((used)) static void rcu_init_new_rnp(struct rcu_node *rnp_leaf)
{
 long mask;
 long oldmask;
 struct rcu_node *rnp = rnp_leaf;

 raw_lockdep_assert_held_rcu_node(rnp_leaf);
 WARN_ON_ONCE(rnp->wait_blkd_tasks);
 for (;;) {
  mask = rnp->grpmask;
  rnp = rnp->parent;
  if (rnp == ((void*)0))
   return;
  raw_spin_lock_rcu_node(rnp);
  oldmask = rnp->qsmaskinit;
  rnp->qsmaskinit |= mask;
  raw_spin_unlock_rcu_node(rnp);
  if (oldmask)
   return;
 }
}
