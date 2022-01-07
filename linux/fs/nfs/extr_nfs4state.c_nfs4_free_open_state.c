
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int dummy; } ;


 int kfree_rcu (struct nfs4_state*,int ) ;
 int rcu_head ;

__attribute__((used)) static void
nfs4_free_open_state(struct nfs4_state *state)
{
 kfree_rcu(state, rcu_head);
}
