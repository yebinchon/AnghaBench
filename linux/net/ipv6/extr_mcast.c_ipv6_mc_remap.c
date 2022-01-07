
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int dummy; } ;


 int ipv6_mc_up (struct inet6_dev*) ;

void ipv6_mc_remap(struct inet6_dev *idev)
{
 ipv6_mc_up(idev);
}
