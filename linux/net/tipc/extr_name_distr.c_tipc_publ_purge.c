
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_net {int nametbl_lock; } ;
struct publication {int key; int port; int node; int lower; int type; int binding_node; int upper; } ;
struct net {int dummy; } ;


 int kfree_rcu (struct publication*,int ) ;
 int pr_err (char*,int ,int ,int ,int ,int ) ;
 int rcu ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct publication* tipc_nametbl_remove_publ (struct net*,int ,int ,int ,int ,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_node_unsubscribe (struct net*,int *,int ) ;

__attribute__((used)) static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
{
 struct tipc_net *tn = tipc_net(net);
 struct publication *p;

 spin_lock_bh(&tn->nametbl_lock);
 p = tipc_nametbl_remove_publ(net, publ->type, publ->lower, publ->upper,
         publ->node, publ->key);
 if (p)
  tipc_node_unsubscribe(net, &p->binding_node, addr);
 spin_unlock_bh(&tn->nametbl_lock);

 if (p != publ) {
  pr_err("Unable to remove publication from failed node\n"
         " (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\n",
         publ->type, publ->lower, publ->node, publ->port,
         publ->key);
 }

 if (p)
  kfree_rcu(p, rcu);
}
