
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int * qdisc_sleeping; int qdisc; } ;
struct net_device {int ingress_queue; } ;


 int GFP_KERNEL ;
 int RCU_INIT_POINTER (int ,int *) ;
 struct netdev_queue* dev_ingress_queue (struct net_device*) ;
 struct netdev_queue* kzalloc (int,int ) ;
 int netdev_init_one_queue (struct net_device*,struct netdev_queue*,int *) ;
 int noop_qdisc ;
 int rcu_assign_pointer (int ,struct netdev_queue*) ;

struct netdev_queue *dev_ingress_queue_create(struct net_device *dev)
{
 struct netdev_queue *queue = dev_ingress_queue(dev);
 return queue;
}
