
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int igmp6_group_dropped (struct ifmcaddr6*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void ipv6_mc_unmap(struct inet6_dev *idev)
{
 struct ifmcaddr6 *i;



 read_lock_bh(&idev->lock);
 for (i = idev->mc_list; i; i = i->next)
  igmp6_group_dropped(i);
 read_unlock_bh(&idev->lock);
}
