
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int lock; struct ifacaddr6* ac_list; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_addr; struct ifacaddr6* aca_next; } ;


 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static bool ipv6_chk_acast_dev(struct net_device *dev, const struct in6_addr *addr)
{
 struct inet6_dev *idev;
 struct ifacaddr6 *aca;

 idev = __in6_dev_get(dev);
 if (idev) {
  read_lock_bh(&idev->lock);
  for (aca = idev->ac_list; aca; aca = aca->aca_next)
   if (ipv6_addr_equal(&aca->aca_addr, addr))
    break;
  read_unlock_bh(&idev->lock);
  return aca != ((void*)0);
 }
 return 0;
}
