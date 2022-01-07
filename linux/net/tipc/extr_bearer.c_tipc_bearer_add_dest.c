
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int disc; } ;
struct net {int dummy; } ;


 struct tipc_net* net_generic (struct net*,int ) ;
 struct tipc_bearer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tipc_disc_add_dest (int ) ;
 int tipc_net_id ;

void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct tipc_bearer *b;

 rcu_read_lock();
 b = rcu_dereference(tn->bearer_list[bearer_id]);
 if (b)
  tipc_disc_add_dest(b->disc);
 rcu_read_unlock();
}
