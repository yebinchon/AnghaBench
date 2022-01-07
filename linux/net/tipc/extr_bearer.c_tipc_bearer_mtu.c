
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_bearer {int mtu; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int * bearer_list; } ;


 struct tipc_bearer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_1__* tipc_net (struct net*) ;

int tipc_bearer_mtu(struct net *net, u32 bearer_id)
{
 int mtu = 0;
 struct tipc_bearer *b;

 rcu_read_lock();
 b = rcu_dereference(tipc_net(net)->bearer_list[bearer_id]);
 if (b)
  mtu = b->mtu;
 rcu_read_unlock();
 return mtu;
}
