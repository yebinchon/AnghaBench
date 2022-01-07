
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef void* u16 ;
struct net_device {size_t num_tc; TYPE_1__* tc_to_txq; } ;
struct TYPE_2__ {void* offset; void* count; } ;


 int EINVAL ;
 int netif_reset_xps_queues (struct net_device*,void*,void*) ;

int netdev_set_tc_queue(struct net_device *dev, u8 tc, u16 count, u16 offset)
{
 if (tc >= dev->num_tc)
  return -EINVAL;




 dev->tc_to_txq[tc].count = count;
 dev->tc_to_txq[tc].offset = offset;
 return 0;
}
