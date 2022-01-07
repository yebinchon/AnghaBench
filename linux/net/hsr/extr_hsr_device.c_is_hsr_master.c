
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ ndo_start_xmit; } ;


 scalar_t__ hsr_dev_xmit ;

inline bool is_hsr_master(struct net_device *dev)
{
 return (dev->netdev_ops->ndo_start_xmit == hsr_dev_xmit);
}
