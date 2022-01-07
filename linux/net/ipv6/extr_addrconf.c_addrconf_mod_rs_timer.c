
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int rs_timer; } ;


 int in6_dev_hold (struct inet6_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void addrconf_mod_rs_timer(struct inet6_dev *idev,
      unsigned long when)
{
 if (!timer_pending(&idev->rs_timer))
  in6_dev_hold(idev);
 mod_timer(&idev->rs_timer, jiffies + when);
}
