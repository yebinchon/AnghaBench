
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg802154_registered_device {int num_running_ifaces; } ;


 int ASSERT_RTNL () ;

__attribute__((used)) static void
cfg802154_update_iface_num(struct cfg802154_registered_device *rdev,
      int iftype, int num)
{
 ASSERT_RTNL();

 rdev->num_running_ifaces += num;
}
