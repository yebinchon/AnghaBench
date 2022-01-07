
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int tx_queue_len; } ;
struct Qdisc_ops {int (* change_tx_queue_len ) (struct Qdisc*,int ) ;} ;
struct Qdisc {struct Qdisc_ops* ops; } ;


 int stub1 (struct Qdisc*,int ) ;

__attribute__((used)) static int qdisc_change_tx_queue_len(struct net_device *dev,
         struct netdev_queue *dev_queue)
{
 struct Qdisc *qdisc = dev_queue->qdisc_sleeping;
 const struct Qdisc_ops *ops = qdisc->ops;

 if (ops->change_tx_queue_len)
  return ops->change_tx_queue_len(qdisc, dev->tx_queue_len);
 return 0;
}
