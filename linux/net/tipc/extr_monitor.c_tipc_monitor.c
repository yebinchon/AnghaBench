
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_monitor {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct tipc_monitor** monitors; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static struct tipc_monitor *tipc_monitor(struct net *net, int bearer_id)
{
 return tipc_net(net)->monitors[bearer_id];
}
