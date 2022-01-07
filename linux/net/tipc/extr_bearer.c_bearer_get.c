
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int dummy; } ;
struct net {int dummy; } ;


 struct tipc_bearer* rcu_dereference (int ) ;
 struct tipc_net* tipc_net (struct net*) ;

__attribute__((used)) static struct tipc_bearer *bearer_get(struct net *net, int bearer_id)
{
 struct tipc_net *tn = tipc_net(net);

 return rcu_dereference(tn->bearer_list[bearer_id]);
}
