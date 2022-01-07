
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int igmp6_group_added (struct ifmcaddr6*) ;
 int ipv6_mc_reset (struct inet6_dev*) ;
 int mld_del_delrec (struct inet6_dev*,struct ifmcaddr6*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void ipv6_mc_up(struct inet6_dev *idev)
{
 struct ifmcaddr6 *i;



 read_lock_bh(&idev->lock);
 ipv6_mc_reset(idev);
 for (i = idev->mc_list; i; i = i->next) {
  mld_del_delrec(idev, i);
  igmp6_group_added(i);
 }
 read_unlock_bh(&idev->lock);
}
