
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct net {int dummy; } ;


 int pr_info (char*) ;
 int tipc_net_finalize (struct net*,scalar_t__) ;
 scalar_t__ tipc_own_id (struct net*) ;
 int tipc_set_node_id (struct net*,int *) ;

int tipc_net_init(struct net *net, u8 *node_id, u32 addr)
{
 if (tipc_own_id(net)) {
  pr_info("Cannot configure node identity twice\n");
  return -1;
 }
 pr_info("Started in network mode\n");

 if (node_id)
  tipc_set_node_id(net, node_id);
 if (addr)
  tipc_net_finalize(net, addr);
 return 0;
}
