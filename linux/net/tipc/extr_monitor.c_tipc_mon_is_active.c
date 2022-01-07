
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {scalar_t__ mon_threshold; } ;
struct tipc_monitor {scalar_t__ peer_cnt; } ;
struct net {int dummy; } ;


 struct tipc_net* tipc_net (struct net*) ;

__attribute__((used)) static inline bool tipc_mon_is_active(struct net *net, struct tipc_monitor *mon)
{
 struct tipc_net *tn = tipc_net(net);

 return mon->peer_cnt > tn->mon_threshold;
}
