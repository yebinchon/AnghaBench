
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct netdev_notifier_bonding_info {TYPE_1__ info; int bonding_info; } ;
struct netdev_bonding_info {int dummy; } ;
struct net_device {int dummy; } ;


 int NETDEV_BONDING_INFO ;
 int call_netdevice_notifiers_info (int ,TYPE_1__*) ;
 int memcpy (int *,struct netdev_bonding_info*,int) ;

void netdev_bonding_info_change(struct net_device *dev,
    struct netdev_bonding_info *bonding_info)
{
 struct netdev_notifier_bonding_info info = {
  .info.dev = dev,
 };

 memcpy(&info.bonding_info, bonding_info,
        sizeof(struct netdev_bonding_info));
 call_netdevice_notifiers_info(NETDEV_BONDING_INFO,
          &info.info);
}
