
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct net_device {size_t real_num_rx_queues; size_t real_num_tx_queues; TYPE_2__* _tx; TYPE_1__* _rx; } ;
struct TYPE_4__ {int * umem; } ;
struct TYPE_3__ {int * umem; } ;



__attribute__((used)) static void xdp_clear_umem_at_qid(struct net_device *dev, u16 queue_id)
{
 if (queue_id < dev->real_num_rx_queues)
  dev->_rx[queue_id].umem = ((void*)0);
 if (queue_id < dev->real_num_tx_queues)
  dev->_tx[queue_id].umem = ((void*)0);
}
