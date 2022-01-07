
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int bcl; int bcbase; } ;
struct net {int dummy; } ;


 int kfree (int ) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 int synchronize_net () ;
 int tipc_net_id ;

void tipc_bcast_stop(struct net *net)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);

 synchronize_net();
 kfree(tn->bcbase);
 kfree(tn->bcl);
}
