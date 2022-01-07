
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct net_device {scalar_t__ num_tc; scalar_t__ real_num_tx_queues; TYPE_1__* tc_to_txq; } ;
struct TYPE_4__ {struct net_device* sb_dev; } ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ count; } ;


 int EINVAL ;
 TYPE_2__* netdev_get_tx_queue (struct net_device*,scalar_t__) ;

int netdev_bind_sb_channel_queue(struct net_device *dev,
     struct net_device *sb_dev,
     u8 tc, u16 count, u16 offset)
{

 if (sb_dev->num_tc >= 0 || tc >= dev->num_tc)
  return -EINVAL;


 if ((offset + count) > dev->real_num_tx_queues)
  return -EINVAL;


 sb_dev->tc_to_txq[tc].count = count;
 sb_dev->tc_to_txq[tc].offset = offset;




 while (count--)
  netdev_get_tx_queue(dev, count + offset)->sb_dev = sb_dev;

 return 0;
}
