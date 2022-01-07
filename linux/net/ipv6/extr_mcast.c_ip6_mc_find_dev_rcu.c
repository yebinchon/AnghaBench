
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int lock; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;


 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int ip6_rt_put (struct rt6_info*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct rt6_info* rt6_lookup (struct net*,struct in6_addr const*,int *,int ,int *,int ) ;

__attribute__((used)) static struct inet6_dev *ip6_mc_find_dev_rcu(struct net *net,
          const struct in6_addr *group,
          int ifindex)
{
 struct net_device *dev = ((void*)0);
 struct inet6_dev *idev = ((void*)0);

 if (ifindex == 0) {
  struct rt6_info *rt = rt6_lookup(net, group, ((void*)0), 0, ((void*)0), 0);

  if (rt) {
   dev = rt->dst.dev;
   ip6_rt_put(rt);
  }
 } else
  dev = dev_get_by_index_rcu(net, ifindex);

 if (!dev)
  return ((void*)0);
 idev = __in6_dev_get(dev);
 if (!idev)
  return ((void*)0);
 read_lock_bh(&idev->lock);
 if (idev->dead) {
  read_unlock_bh(&idev->lock);
  return ((void*)0);
 }
 return idev;
}
