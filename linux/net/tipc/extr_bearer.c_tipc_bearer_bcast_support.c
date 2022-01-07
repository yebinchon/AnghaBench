
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ broadcast; } ;
struct tipc_bearer {TYPE_1__ bcast_addr; } ;
struct net {int dummy; } ;


 scalar_t__ TIPC_BROADCAST_SUPPORT ;
 struct tipc_bearer* bearer_get (struct net*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool tipc_bearer_bcast_support(struct net *net, u32 bearer_id)
{
 bool supp = 0;
 struct tipc_bearer *b;

 rcu_read_lock();
 b = bearer_get(net, bearer_id);
 if (b)
  supp = (b->bcast_addr.broadcast == TIPC_BROADCAST_SUPPORT);
 rcu_read_unlock();
 return supp;
}
