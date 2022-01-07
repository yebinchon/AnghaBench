
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct inet6_dev {int lock; } ;
struct in6_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_get_lladdr (struct inet6_dev*,struct in6_addr*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ipv6_get_lladdr(struct net_device *dev, struct in6_addr *addr,
      u32 banned_flags)
{
 struct inet6_dev *idev;
 int err = -EADDRNOTAVAIL;

 rcu_read_lock();
 idev = __in6_dev_get(dev);
 if (idev) {
  read_lock_bh(&idev->lock);
  err = __ipv6_get_lladdr(idev, addr, banned_flags);
  read_unlock_bh(&idev->lock);
 }
 rcu_read_unlock();
 return err;
}
