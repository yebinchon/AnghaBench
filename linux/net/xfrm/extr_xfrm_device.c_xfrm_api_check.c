
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; TYPE_1__* xfrmdev_ops; } ;
struct TYPE_2__ {scalar_t__ xdo_dev_state_delete; scalar_t__ xdo_dev_state_add; } ;


 int NETIF_F_HW_ESP ;
 int NETIF_F_HW_ESP_TX_CSUM ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;

__attribute__((used)) static int xfrm_api_check(struct net_device *dev)
{
 if (dev->features & (NETIF_F_HW_ESP | NETIF_F_HW_ESP_TX_CSUM))
  return NOTIFY_BAD;


 return NOTIFY_DONE;
}
