
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct inet6_dev {scalar_t__ mc_ifc_count; } ;


 struct inet6_dev* from_timer (int ,struct timer_list*,int ) ;
 struct inet6_dev* idev ;
 int in6_dev_put (struct inet6_dev*) ;
 int mc_ifc_timer ;
 int mld_ifc_start_timer (struct inet6_dev*,int ) ;
 int mld_send_cr (struct inet6_dev*) ;
 int unsolicited_report_interval (struct inet6_dev*) ;

__attribute__((used)) static void mld_ifc_timer_expire(struct timer_list *t)
{
 struct inet6_dev *idev = from_timer(idev, t, mc_ifc_timer);

 mld_send_cr(idev);
 if (idev->mc_ifc_count) {
  idev->mc_ifc_count--;
  if (idev->mc_ifc_count)
   mld_ifc_start_timer(idev,
         unsolicited_report_interval(idev));
 }
 in6_dev_put(idev);
}
