
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct inet6_dev {scalar_t__ mc_dad_count; } ;


 struct inet6_dev* from_timer (int ,struct timer_list*,int ) ;
 struct inet6_dev* idev ;
 int in6_dev_put (struct inet6_dev*) ;
 int mc_dad_timer ;
 int mld_dad_start_timer (struct inet6_dev*,int ) ;
 int mld_send_initial_cr (struct inet6_dev*) ;
 int unsolicited_report_interval (struct inet6_dev*) ;

__attribute__((used)) static void mld_dad_timer_expire(struct timer_list *t)
{
 struct inet6_dev *idev = from_timer(idev, t, mc_dad_timer);

 mld_send_initial_cr(idev);
 if (idev->mc_dad_count) {
  idev->mc_dad_count--;
  if (idev->mc_dad_count)
   mld_dad_start_timer(idev,
         unsolicited_report_interval(idev));
 }
 in6_dev_put(idev);
}
