
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_node {int* active_links; TYPE_1__* links; } ;
struct net {int dummy; } ;
struct TYPE_2__ {unsigned int mtu; } ;


 int INVALID_BEARER_ID ;
 unsigned int MAX_MSG_SIZE ;
 scalar_t__ likely (int) ;
 struct tipc_node* tipc_node_find (struct net*,int) ;
 int tipc_node_put (struct tipc_node*) ;
 scalar_t__ unlikely (int) ;

int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
{
 struct tipc_node *n;
 int bearer_id;
 unsigned int mtu = MAX_MSG_SIZE;

 n = tipc_node_find(net, addr);
 if (unlikely(!n))
  return mtu;

 bearer_id = n->active_links[sel & 1];
 if (likely(bearer_id != INVALID_BEARER_ID))
  mtu = n->links[bearer_id].mtu;
 tipc_node_put(n);
 return mtu;
}
