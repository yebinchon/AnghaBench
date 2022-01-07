
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tipc_node {int capabilities; } ;
struct net {int dummy; } ;


 int TIPC_NODE_CAPABILITIES ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_put (struct tipc_node*) ;
 scalar_t__ unlikely (int) ;

u16 tipc_node_get_capabilities(struct net *net, u32 addr)
{
 struct tipc_node *n;
 u16 caps;

 n = tipc_node_find(net, addr);
 if (unlikely(!n))
  return TIPC_NODE_CAPABILITIES;
 caps = n->capabilities;
 tipc_node_put(n);
 return caps;
}
