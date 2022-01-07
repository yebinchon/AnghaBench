
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {TYPE_1__* idev; int prefix_len; int addr; } ;
struct fib6_info {int fib6_flags; } ;
struct TYPE_2__ {int dev; } ;


 int RTF_DEFAULT ;
 int RTF_EXPIRES ;
 struct fib6_info* addrconf_get_prefix_route (int *,int ,int ,int ,int ,int) ;
 int dev_net (int ) ;
 int fib6_info_release (struct fib6_info*) ;
 int fib6_set_expires (struct fib6_info*,unsigned long) ;
 int ip6_del_rt (int ,struct fib6_info*) ;

__attribute__((used)) static void
cleanup_prefix_route(struct inet6_ifaddr *ifp, unsigned long expires, bool del_rt)
{
 struct fib6_info *f6i;

 f6i = addrconf_get_prefix_route(&ifp->addr, ifp->prefix_len,
     ifp->idev->dev, 0, RTF_DEFAULT, 1);
 if (f6i) {
  if (del_rt)
   ip6_del_rt(dev_net(ifp->idev->dev), f6i);
  else {
   if (!(f6i->fib6_flags & RTF_EXPIRES))
    fib6_set_expires(f6i, expires);
   fib6_info_release(f6i);
  }
 }
}
