
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ in_own_node (struct net*,int ) ;
 int node_is_up (struct tipc_node*) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_put (struct tipc_node*) ;

bool tipc_node_is_up(struct net *net, u32 addr)
{
 struct tipc_node *n;
 bool retval = 0;

 if (in_own_node(net, addr))
  return 1;

 n = tipc_node_find(net, addr);
 if (!n)
  return 0;
 retval = node_is_up(n);
 tipc_node_put(n);
 return retval;
}
