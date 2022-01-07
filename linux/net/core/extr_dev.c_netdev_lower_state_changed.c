
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct netdev_notifier_changelowerstate_info {TYPE_1__ info; void* lower_state_info; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int NETDEV_CHANGELOWERSTATE ;
 int call_netdevice_notifiers_info (int ,TYPE_1__*) ;

void netdev_lower_state_changed(struct net_device *lower_dev,
    void *lower_state_info)
{
 struct netdev_notifier_changelowerstate_info changelowerstate_info = {
  .info.dev = lower_dev,
 };

 ASSERT_RTNL();
 changelowerstate_info.lower_state_info = lower_state_info;
 call_netdevice_notifiers_info(NETDEV_CHANGELOWERSTATE,
          &changelowerstate_info.info);
}
