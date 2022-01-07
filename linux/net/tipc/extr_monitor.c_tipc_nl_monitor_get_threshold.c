
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int mon_threshold; } ;
struct net {int dummy; } ;


 struct tipc_net* tipc_net (struct net*) ;

int tipc_nl_monitor_get_threshold(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);

 return tn->mon_threshold;
}
