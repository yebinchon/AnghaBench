
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_notifier_info {int dummy; } ;


 int ASSERT_RTNL () ;
 int netdev_chain ;
 int raw_notifier_call_chain (int *,unsigned long,struct netdev_notifier_info*) ;

__attribute__((used)) static int call_netdevice_notifiers_info(unsigned long val,
      struct netdev_notifier_info *info)
{
 ASSERT_RTNL();
 return raw_notifier_call_chain(&netdev_chain, val, info);
}
