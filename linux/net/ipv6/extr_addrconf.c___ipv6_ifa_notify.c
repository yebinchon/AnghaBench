
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dev_addr_genid; } ;
struct net {TYPE_2__ ipv6; } ;
struct inet6_ifaddr {struct fib6_info* rt; TYPE_5__* idev; int peer_addr; int addr; } ;
struct fib6_info {int fib6_node; } ;
struct TYPE_7__ {int forwarding; } ;
struct TYPE_10__ {TYPE_3__* dev; TYPE_1__ cnf; } ;
struct TYPE_9__ {int flags; int name; } ;


 int ASSERT_RTNL () ;
 int GFP_ATOMIC ;
 int IFF_UP ;


 struct fib6_info* addrconf_get_prefix_route (int *,int,TYPE_3__*,int ,int ,int) ;
 int addrconf_join_anycast (struct inet6_ifaddr*) ;
 int addrconf_leave_anycast (struct inet6_ifaddr*) ;
 int addrconf_leave_solict (TYPE_5__*,int *) ;
 int addrconf_prefix_route (int *,int,int ,TYPE_3__*,int ,int ,int ) ;
 int atomic_inc (int *) ;
 struct net* dev_net (TYPE_3__*) ;
 int inet6_ifa_notify (int,struct inet6_ifaddr*) ;
 int ip6_del_rt (struct net*,struct fib6_info*) ;
 int ip6_ins_rt (struct net*,struct fib6_info*) ;
 int ipv6_addr_any (int *) ;
 int pr_warn (char*,int *,int ) ;
 int rcu_access_pointer (int ) ;
 int rt_genid_bump_ipv6 (struct net*) ;

__attribute__((used)) static void __ipv6_ifa_notify(int event, struct inet6_ifaddr *ifp)
{
 struct net *net = dev_net(ifp->idev->dev);

 if (event)
  ASSERT_RTNL();

 inet6_ifa_notify(event ? : 128, ifp);

 switch (event) {
 case 128:
  if (ifp->rt && !rcu_access_pointer(ifp->rt->fib6_node)) {
   ip6_ins_rt(net, ifp->rt);
  } else if (!ifp->rt && (ifp->idev->dev->flags & IFF_UP)) {
   pr_warn("BUG: Address %pI6c on device %s is missing its host route.\n",
    &ifp->addr, ifp->idev->dev->name);
  }

  if (ifp->idev->cnf.forwarding)
   addrconf_join_anycast(ifp);
  if (!ipv6_addr_any(&ifp->peer_addr))
   addrconf_prefix_route(&ifp->peer_addr, 128, 0,
           ifp->idev->dev, 0, 0,
           GFP_ATOMIC);
  break;
 case 129:
  if (ifp->idev->cnf.forwarding)
   addrconf_leave_anycast(ifp);
  addrconf_leave_solict(ifp->idev, &ifp->addr);
  if (!ipv6_addr_any(&ifp->peer_addr)) {
   struct fib6_info *rt;

   rt = addrconf_get_prefix_route(&ifp->peer_addr, 128,
             ifp->idev->dev, 0, 0,
             0);
   if (rt)
    ip6_del_rt(net, rt);
  }
  if (ifp->rt) {
   ip6_del_rt(net, ifp->rt);
   ifp->rt = ((void*)0);
  }
  rt_genid_bump_ipv6(net);
  break;
 }
 atomic_inc(&net->ipv6.dev_addr_genid);
}
