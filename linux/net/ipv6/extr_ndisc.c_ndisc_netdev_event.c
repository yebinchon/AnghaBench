
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct netdev_notifier_change_info {int flags_changed; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* devconf_all; } ;
struct net {TYPE_3__ ipv6; } ;
struct TYPE_4__ {int ndisc_notify; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_5__ {int ndisc_notify; } ;


 int IFF_NOARP ;





 int NOTIFY_DONE ;
 struct net* dev_net (struct net_device*) ;
 int fib6_run_gc (int ,struct net*,int) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int nd_tbl ;
 int ndisc_send_unsol_na (struct net_device*) ;
 int neigh_carrier_down (int *,struct net_device*) ;
 int neigh_changeaddr (int *,struct net_device*) ;
 int neigh_ifdown (int *,struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int ndisc_netdev_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netdev_notifier_change_info *change_info;
 struct net *net = dev_net(dev);
 struct inet6_dev *idev;

 switch (event) {
 case 131:
  neigh_changeaddr(&nd_tbl, dev);
  fib6_run_gc(0, net, 0);

 case 128:
  idev = in6_dev_get(dev);
  if (!idev)
   break;
  if (idev->cnf.ndisc_notify ||
      net->ipv6.devconf_all->ndisc_notify)
   ndisc_send_unsol_na(dev);
  in6_dev_put(idev);
  break;
 case 132:
  change_info = ptr;
  if (change_info->flags_changed & IFF_NOARP)
   neigh_changeaddr(&nd_tbl, dev);
  if (!netif_carrier_ok(dev))
   neigh_carrier_down(&nd_tbl, dev);
  break;
 case 130:
  neigh_ifdown(&nd_tbl, dev);
  fib6_run_gc(0, net, 0);
  break;
 case 129:
  ndisc_send_unsol_na(dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
