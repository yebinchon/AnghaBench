
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_gq_timer; scalar_t__ mc_gq_running; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 scalar_t__ del_timer (int *) ;

__attribute__((used)) static void mld_gq_stop_timer(struct inet6_dev *idev)
{
 idev->mc_gq_running = 0;
 if (del_timer(&idev->mc_gq_timer))
  __in6_dev_put(idev);
}
