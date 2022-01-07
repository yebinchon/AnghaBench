
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inet6_ifaddr {int flags; scalar_t__ state; int rt_priority; int prefix_len; int addr; int lock; struct fib6_info* rt; } ;
struct inet6_dev {int dev; } ;
struct fib6_info {int fib6_node; } ;


 int GFP_ATOMIC ;
 int IFA_F_NOPREFIXROUTE ;
 scalar_t__ INET6_IFADDR_STATE_PREDAD ;
 scalar_t__ IS_ERR (struct fib6_info*) ;
 int PTR_ERR (struct fib6_info*) ;
 int addrconf_dad_start (struct inet6_ifaddr*) ;
 struct fib6_info* addrconf_f6i_alloc (struct net*,struct inet6_dev*,int *,int,int ) ;
 int addrconf_prefix_route (int *,int ,int ,int ,int ,int ,int ) ;
 int fib6_info_release (struct fib6_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fixup_permanent_addr(struct net *net,
    struct inet6_dev *idev,
    struct inet6_ifaddr *ifp)
{




 if (!ifp->rt || !ifp->rt->fib6_node) {
  struct fib6_info *f6i, *prev;

  f6i = addrconf_f6i_alloc(net, idev, &ifp->addr, 0,
      GFP_ATOMIC);
  if (IS_ERR(f6i))
   return PTR_ERR(f6i);


  spin_lock(&ifp->lock);
  prev = ifp->rt;
  ifp->rt = f6i;
  spin_unlock(&ifp->lock);

  fib6_info_release(prev);
 }

 if (!(ifp->flags & IFA_F_NOPREFIXROUTE)) {
  addrconf_prefix_route(&ifp->addr, ifp->prefix_len,
          ifp->rt_priority, idev->dev, 0, 0,
          GFP_ATOMIC);
 }

 if (ifp->state == INET6_IFADDR_STATE_PREDAD)
  addrconf_dad_start(ifp);

 return 0;
}
