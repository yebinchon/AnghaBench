
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int pr_info (char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tipc_bearer_stop (struct net*) ;
 int tipc_node_stop (struct net*) ;
 int tipc_own_id (struct net*) ;

void tipc_net_stop(struct net *net)
{
 if (!tipc_own_id(net))
  return;

 rtnl_lock();
 tipc_bearer_stop(net);
 tipc_node_stop(net);
 rtnl_unlock();

 pr_info("Left network mode\n");
}
