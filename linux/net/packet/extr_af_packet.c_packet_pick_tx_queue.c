
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int sender_cpu; struct net_device* dev; } ;
struct net_device_ops {int (* ndo_select_queue ) (struct net_device*,struct sk_buff*,int *) ;} ;
struct net_device {int real_num_tx_queues; struct net_device_ops* netdev_ops; } ;


 int netdev_cap_txqueue (struct net_device*,int ) ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 int raw_smp_processor_id () ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 int stub1 (struct net_device*,struct sk_buff*,int *) ;

__attribute__((used)) static u16 packet_pick_tx_queue(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 const struct net_device_ops *ops = dev->netdev_ops;
 int cpu = raw_smp_processor_id();
 u16 queue_index;




 skb_record_rx_queue(skb, cpu % dev->real_num_tx_queues);
 if (ops->ndo_select_queue) {
  queue_index = ops->ndo_select_queue(dev, skb, ((void*)0));
  queue_index = netdev_cap_txqueue(dev, queue_index);
 } else {
  queue_index = netdev_pick_tx(dev, skb, ((void*)0));
 }

 return queue_index;
}
