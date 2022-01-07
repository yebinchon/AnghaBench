
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_dad_timer; } ;


 int in6_dev_hold (struct inet6_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long prandom_u32 () ;

__attribute__((used)) static void mld_dad_start_timer(struct inet6_dev *idev, unsigned long delay)
{
 unsigned long tv = prandom_u32() % delay;

 if (!mod_timer(&idev->mc_dad_timer, jiffies+tv+2))
  in6_dev_hold(idev);
}
