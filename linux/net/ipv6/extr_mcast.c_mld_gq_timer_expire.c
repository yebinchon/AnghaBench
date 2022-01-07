
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct inet6_dev {scalar_t__ mc_gq_running; } ;


 struct inet6_dev* from_timer (int ,struct timer_list*,int ) ;
 struct inet6_dev* idev ;
 int in6_dev_put (struct inet6_dev*) ;
 int mc_gq_timer ;
 int mld_send_report (struct inet6_dev*,int *) ;

__attribute__((used)) static void mld_gq_timer_expire(struct timer_list *t)
{
 struct inet6_dev *idev = from_timer(idev, t, mc_gq_timer);

 idev->mc_gq_running = 0;
 mld_send_report(idev, ((void*)0));
 in6_dev_put(idev);
}
