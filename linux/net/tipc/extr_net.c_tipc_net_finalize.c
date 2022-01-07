
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_net {int node_addr; } ;
struct net {int dummy; } ;


 int TIPC_CFG_SRV ;
 int TIPC_CLUSTER_SCOPE ;
 scalar_t__ cmpxchg (int *,int ,int ) ;
 int tipc_named_reinit (struct net*) ;
 int tipc_nametbl_publish (struct net*,int ,int ,int ,int ,int ,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_set_node_addr (struct net*,int ) ;
 int tipc_sk_reinit (struct net*) ;

__attribute__((used)) static void tipc_net_finalize(struct net *net, u32 addr)
{
 struct tipc_net *tn = tipc_net(net);

 if (cmpxchg(&tn->node_addr, 0, addr))
  return;
 tipc_set_node_addr(net, addr);
 tipc_named_reinit(net);
 tipc_sk_reinit(net);
 tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
        TIPC_CLUSTER_SCOPE, 0, addr);
}
