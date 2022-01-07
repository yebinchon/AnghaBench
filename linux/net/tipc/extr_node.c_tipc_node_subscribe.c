
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int publ_list; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 scalar_t__ in_own_node (struct net*,int ) ;
 int list_add_tail (struct list_head*,int *) ;
 int pr_warn (char*,int ) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock_fast (struct tipc_node*) ;

void tipc_node_subscribe(struct net *net, struct list_head *subscr, u32 addr)
{
 struct tipc_node *n;

 if (in_own_node(net, addr))
  return;

 n = tipc_node_find(net, addr);
 if (!n) {
  pr_warn("Node subscribe rejected, unknown node 0x%x\n", addr);
  return;
 }
 tipc_node_write_lock(n);
 list_add_tail(subscr, &n->publ_list);
 tipc_node_write_unlock_fast(n);
 tipc_node_put(n);
}
