
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_tap {int dummy; } ;


 int __netlink_remove_tap (struct netlink_tap*) ;
 int synchronize_net () ;

int netlink_remove_tap(struct netlink_tap *nt)
{
 int ret;

 ret = __netlink_remove_tap(nt);
 synchronize_net();

 return ret;
}
