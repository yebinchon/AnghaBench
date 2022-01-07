
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; int dev; struct ifacaddr6* ac_list; } ;
struct ifacaddr6 {int aca_rt; int aca_addr; struct ifacaddr6* aca_next; } ;


 int aca_put (struct ifacaddr6*) ;
 int addrconf_leave_solict (struct inet6_dev*,int *) ;
 int dev_net (int ) ;
 int ip6_del_rt (int ,int ) ;
 int ipv6_del_acaddr_hash (struct ifacaddr6*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_ac_destroy_dev(struct inet6_dev *idev)
{
 struct ifacaddr6 *aca;

 write_lock_bh(&idev->lock);
 while ((aca = idev->ac_list) != ((void*)0)) {
  idev->ac_list = aca->aca_next;
  write_unlock_bh(&idev->lock);

  ipv6_del_acaddr_hash(aca);

  addrconf_leave_solict(idev, &aca->aca_addr);

  ip6_del_rt(dev_net(idev->dev), aca->aca_rt);

  aca_put(aca);

  write_lock_bh(&idev->lock);
 }
 write_unlock_bh(&idev->lock);
}
