
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ ndo_start_xmit; } ;


 scalar_t__ batadv_interface_tx ;

bool batadv_softif_is_valid(const struct net_device *net_dev)
{
 if (net_dev->netdev_ops->ndo_start_xmit == batadv_interface_tx)
  return 1;

 return 0;
}
