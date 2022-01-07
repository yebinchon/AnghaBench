
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; int type; struct net_device* dev; } ;
struct tipc_net {TYPE_1__ loopback_pt; } ;
struct net_device {int dummy; } ;
struct net {struct net_device* loopback_dev; } ;


 int ENODEV ;
 int ETH_P_TIPC ;
 int dev_add_pack (TYPE_1__*) ;
 int dev_hold (struct net_device*) ;
 int htons (int ) ;
 int tipc_loopback_rcv_pkt ;
 struct tipc_net* tipc_net (struct net*) ;

int tipc_attach_loopback(struct net *net)
{
 struct net_device *dev = net->loopback_dev;
 struct tipc_net *tn = tipc_net(net);

 if (!dev)
  return -ENODEV;

 dev_hold(dev);
 tn->loopback_pt.dev = dev;
 tn->loopback_pt.type = htons(ETH_P_TIPC);
 tn->loopback_pt.func = tipc_loopback_rcv_pkt;
 dev_add_pack(&tn->loopback_pt);
 return 0;
}
