
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_net {scalar_t__ mon_threshold; } ;
struct net {int dummy; } ;


 int EINVAL ;
 scalar_t__ TIPC_CLUSTER_SIZE ;
 struct tipc_net* tipc_net (struct net*) ;

int tipc_nl_monitor_set_threshold(struct net *net, u32 cluster_size)
{
 struct tipc_net *tn = tipc_net(net);

 if (cluster_size > TIPC_CLUSTER_SIZE)
  return -EINVAL;

 tn->mon_threshold = cluster_size;

 return 0;
}
