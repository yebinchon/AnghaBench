
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct inet6_ifaddr {TYPE_1__* idev; scalar_t__ rt_priority; int prefix_len; int addr; } ;
struct fib6_info {scalar_t__ fib6_metric; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int GFP_KERNEL ;
 scalar_t__ IP6_RT_PRIO_ADDRCONF ;
 int RTF_DEFAULT ;
 struct fib6_info* addrconf_get_prefix_route (int *,int ,int ,int ,int ,int) ;
 int addrconf_prefix_route (int *,int ,scalar_t__,int ,unsigned long,scalar_t__,int ) ;
 int dev_net (int ) ;
 int fib6_clean_expires (struct fib6_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 int fib6_set_expires (struct fib6_info*,unsigned long) ;
 int ip6_del_rt (int ,struct fib6_info*) ;

__attribute__((used)) static int modify_prefix_route(struct inet6_ifaddr *ifp,
          unsigned long expires, u32 flags)
{
 struct fib6_info *f6i;
 u32 prio;

 f6i = addrconf_get_prefix_route(&ifp->addr, ifp->prefix_len,
     ifp->idev->dev, 0, RTF_DEFAULT, 1);
 if (!f6i)
  return -ENOENT;

 prio = ifp->rt_priority ? : IP6_RT_PRIO_ADDRCONF;
 if (f6i->fib6_metric != prio) {

  ip6_del_rt(dev_net(ifp->idev->dev), f6i);


  addrconf_prefix_route(&ifp->addr, ifp->prefix_len,
          ifp->rt_priority, ifp->idev->dev,
          expires, flags, GFP_KERNEL);
 } else {
  if (!expires)
   fib6_clean_expires(f6i);
  else
   fib6_set_expires(f6i, expires);

  fib6_info_release(f6i);
 }

 return 0;
}
