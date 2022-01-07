
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int ASSERT_RTNL () ;
 int igmp6_join_group (struct ifmcaddr6*) ;
 scalar_t__ mld_in_v1_mode (struct inet6_dev*) ;
 int mld_send_report (struct inet6_dev*,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void ipv6_mc_rejoin_groups(struct inet6_dev *idev)
{
 struct ifmcaddr6 *pmc;

 ASSERT_RTNL();

 if (mld_in_v1_mode(idev)) {
  read_lock_bh(&idev->lock);
  for (pmc = idev->mc_list; pmc; pmc = pmc->next)
   igmp6_join_group(pmc);
  read_unlock_bh(&idev->lock);
 } else
  mld_send_report(idev, ((void*)0));
}
