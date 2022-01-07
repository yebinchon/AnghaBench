
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; int mca_addr; int mca_users; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int igmp6_group_added (struct ifmcaddr6*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ip6_mc_add_src (struct inet6_dev*,int *,unsigned int,int ,int *,int ) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int ma_put (struct ifmcaddr6*) ;
 struct ifmcaddr6* mca_alloc (struct inet6_dev*,struct in6_addr const*,unsigned int) ;
 int mca_get (struct ifmcaddr6*) ;
 int mld_del_delrec (struct inet6_dev*,struct ifmcaddr6*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int __ipv6_dev_mc_inc(struct net_device *dev,
        const struct in6_addr *addr, unsigned int mode)
{
 struct ifmcaddr6 *mc;
 struct inet6_dev *idev;

 ASSERT_RTNL();


 idev = in6_dev_get(dev);

 if (!idev)
  return -EINVAL;

 write_lock_bh(&idev->lock);
 if (idev->dead) {
  write_unlock_bh(&idev->lock);
  in6_dev_put(idev);
  return -ENODEV;
 }

 for (mc = idev->mc_list; mc; mc = mc->next) {
  if (ipv6_addr_equal(&mc->mca_addr, addr)) {
   mc->mca_users++;
   write_unlock_bh(&idev->lock);
   ip6_mc_add_src(idev, &mc->mca_addr, mode, 0, ((void*)0), 0);
   in6_dev_put(idev);
   return 0;
  }
 }

 mc = mca_alloc(idev, addr, mode);
 if (!mc) {
  write_unlock_bh(&idev->lock);
  in6_dev_put(idev);
  return -ENOMEM;
 }

 mc->next = idev->mc_list;
 idev->mc_list = mc;




 mca_get(mc);
 write_unlock_bh(&idev->lock);

 mld_del_delrec(idev, mc);
 igmp6_group_added(mc);
 ma_put(mc);
 return 0;
}
