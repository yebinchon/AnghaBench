
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tipc_node {int peer_id; } ;
struct net {int dummy; } ;


 int TIPC_NODEID_LEN ;
 int memcpy (int *,int *,int ) ;
 struct tipc_node* tipc_node_find (struct net*,scalar_t__) ;
 int tipc_node_put (struct tipc_node*) ;
 scalar_t__ tipc_own_addr (struct net*) ;
 int * tipc_own_id (struct net*) ;

bool tipc_node_get_id(struct net *net, u32 addr, u8 *id)
{
 u8 *own_id = tipc_own_id(net);
 struct tipc_node *n;

 if (!own_id)
  return 1;

 if (addr == tipc_own_addr(net)) {
  memcpy(id, own_id, TIPC_NODEID_LEN);
  return 1;
 }
 n = tipc_node_find(net, addr);
 if (!n)
  return 0;

 memcpy(id, &n->peer_id, TIPC_NODEID_LEN);
 tipc_node_put(n);
 return 1;
}
