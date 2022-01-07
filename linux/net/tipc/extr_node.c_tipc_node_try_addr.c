
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tipc_node {scalar_t__ addr; int peer_id; } ;
struct tipc_net {scalar_t__ trial_addr; } ;
struct net {int dummy; } ;


 int NODE_ID_LEN ;
 int memcmp (int ,int *,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 struct tipc_node* tipc_node_find (struct net*,scalar_t__) ;
 struct tipc_node* tipc_node_find_by_id (struct net*,int *) ;
 int tipc_node_put (struct tipc_node*) ;
 scalar_t__ tipc_node_suggest_addr (struct net*,scalar_t__) ;

u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr)
{
 struct tipc_net *tn = tipc_net(net);
 struct tipc_node *n;


 n = tipc_node_find(net, addr);
 if (n) {
  if (!memcmp(n->peer_id, id, NODE_ID_LEN))
   addr = 0;
  tipc_node_put(n);
  if (!addr)
   return 0;
  return tipc_node_suggest_addr(net, addr);
 }


 n = tipc_node_find_by_id(net, id);
 if (n) {
  addr = n->addr;
  tipc_node_put(n);
  return addr;
 }


 if (tn->trial_addr == addr)
  return tipc_node_suggest_addr(net, addr);

 return 0;
}
