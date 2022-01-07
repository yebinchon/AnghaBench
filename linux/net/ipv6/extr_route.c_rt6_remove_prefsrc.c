
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct inet6_ifaddr {int addr; TYPE_1__* idev; } ;
struct arg_dev_net_ip {int * addr; struct net* net; int dev; } ;
struct TYPE_2__ {int dev; } ;


 struct net* dev_net (int ) ;
 int fib6_clean_all (struct net*,int ,struct arg_dev_net_ip*) ;
 int fib6_remove_prefsrc ;

void rt6_remove_prefsrc(struct inet6_ifaddr *ifp)
{
 struct net *net = dev_net(ifp->idev->dev);
 struct arg_dev_net_ip adni = {
  .dev = ifp->idev->dev,
  .net = net,
  .addr = &ifp->addr,
 };
 fib6_clean_all(net, fib6_remove_prefsrc, &adni);
}
