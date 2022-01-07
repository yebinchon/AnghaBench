
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_bearer {int addr; TYPE_1__* media; int mtu; int up; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ dev_addr; int mtu; int tipc_ptr; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* raw2addr ) (struct tipc_bearer*,int *,char*) ;} ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int bearer_disable (struct net*,struct tipc_bearer*) ;
 int clear_bit_unlock (int ,int *) ;
 struct net* dev_net (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_oper_up (struct net_device*) ;
 struct tipc_bearer* rtnl_dereference (int ) ;
 int stub1 (struct tipc_bearer*,int *,char*) ;
 int test_and_set_bit_lock (int ,int *) ;
 int tipc_mtu_bad (struct net_device*,int ) ;
 int tipc_reset_bearer (struct net*,struct tipc_bearer*) ;
 int trace_tipc_l2_device_event (struct net_device*,struct tipc_bearer*,unsigned long) ;

__attribute__((used)) static int tipc_l2_device_event(struct notifier_block *nb, unsigned long evt,
    void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct net *net = dev_net(dev);
 struct tipc_bearer *b;

 b = rtnl_dereference(dev->tipc_ptr);
 if (!b)
  return NOTIFY_DONE;

 trace_tipc_l2_device_event(dev, b, evt);
 switch (evt) {
 case 134:
  if (netif_carrier_ok(dev) && netif_oper_up(dev)) {
   test_and_set_bit_lock(0, &b->up);
   break;
  }

 case 130:
  clear_bit_unlock(0, &b->up);
  tipc_reset_bearer(net, b);
  break;
 case 128:
  test_and_set_bit_lock(0, &b->up);
  break;
 case 132:
  if (tipc_mtu_bad(dev, 0)) {
   bearer_disable(net, b);
   break;
  }
  b->mtu = dev->mtu;
  tipc_reset_bearer(net, b);
  break;
 case 133:
  b->media->raw2addr(b, &b->addr,
       (char *)dev->dev_addr);
  tipc_reset_bearer(net, b);
  break;
 case 129:
 case 131:
  bearer_disable(net, b);
  break;
 }
 return NOTIFY_OK;
}
