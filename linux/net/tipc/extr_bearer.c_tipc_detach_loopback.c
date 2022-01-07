
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int loopback_pt; } ;
struct net {int loopback_dev; } ;


 int dev_put (int ) ;
 int dev_remove_pack (int *) ;
 struct tipc_net* tipc_net (struct net*) ;

void tipc_detach_loopback(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);

 dev_remove_pack(&tn->loopback_pt);
 dev_put(net->loopback_dev);
}
