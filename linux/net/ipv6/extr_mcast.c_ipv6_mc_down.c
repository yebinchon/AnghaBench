
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int igmp6_group_dropped (struct ifmcaddr6*) ;
 int mld_dad_stop_timer (struct inet6_dev*) ;
 int mld_gq_stop_timer (struct inet6_dev*) ;
 int mld_ifc_stop_timer (struct inet6_dev*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void ipv6_mc_down(struct inet6_dev *idev)
{
 struct ifmcaddr6 *i;



 read_lock_bh(&idev->lock);

 for (i = idev->mc_list; i; i = i->next)
  igmp6_group_dropped(i);




 mld_ifc_stop_timer(idev);
 mld_gq_stop_timer(idev);
 mld_dad_stop_timer(idev);
 read_unlock_bh(&idev->lock);
}
