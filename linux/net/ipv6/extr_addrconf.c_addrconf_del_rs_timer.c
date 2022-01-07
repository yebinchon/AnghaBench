
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int rs_timer; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 scalar_t__ del_timer (int *) ;

__attribute__((used)) static void addrconf_del_rs_timer(struct inet6_dev *idev)
{
 if (del_timer(&idev->rs_timer))
  __in6_dev_put(idev);
}
