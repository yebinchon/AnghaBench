
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int dev; int lock; struct ifacaddr6* ac_list; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {scalar_t__ aca_users; int aca_rt; int aca_addr; struct ifacaddr6* aca_next; } ;


 int ASSERT_RTNL () ;
 int ENOENT ;
 int aca_put (struct ifacaddr6*) ;
 int addrconf_leave_solict (struct inet6_dev*,int *) ;
 int dev_net (int ) ;
 int ip6_del_rt (int ,int ) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int ipv6_del_acaddr_hash (struct ifacaddr6*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int __ipv6_dev_ac_dec(struct inet6_dev *idev, const struct in6_addr *addr)
{
 struct ifacaddr6 *aca, *prev_aca;

 ASSERT_RTNL();

 write_lock_bh(&idev->lock);
 prev_aca = ((void*)0);
 for (aca = idev->ac_list; aca; aca = aca->aca_next) {
  if (ipv6_addr_equal(&aca->aca_addr, addr))
   break;
  prev_aca = aca;
 }
 if (!aca) {
  write_unlock_bh(&idev->lock);
  return -ENOENT;
 }
 if (--aca->aca_users > 0) {
  write_unlock_bh(&idev->lock);
  return 0;
 }
 if (prev_aca)
  prev_aca->aca_next = aca->aca_next;
 else
  idev->ac_list = aca->aca_next;
 write_unlock_bh(&idev->lock);
 ipv6_del_acaddr_hash(aca);
 addrconf_leave_solict(idev, &aca->aca_addr);

 ip6_del_rt(dev_net(idev->dev), aca->aca_rt);

 aca_put(aca);
 return 0;
}
