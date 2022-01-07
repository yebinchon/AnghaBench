
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_1__* ieee802154_ptr; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {struct net_device* wdev; } ;
struct TYPE_3__ {int * lowpan_dev; } ;


 int ASSERT_RTNL () ;
 int dev_put (struct net_device*) ;
 TYPE_2__* lowpan_802154_dev (struct net_device*) ;
 int lowpan_unregister_netdevice (struct net_device*) ;

__attribute__((used)) static void lowpan_dellink(struct net_device *ldev, struct list_head *head)
{
 struct net_device *wdev = lowpan_802154_dev(ldev)->wdev;

 ASSERT_RTNL();

 wdev->ieee802154_ptr->lowpan_dev = ((void*)0);
 lowpan_unregister_netdevice(ldev);
 dev_put(wdev);
}
