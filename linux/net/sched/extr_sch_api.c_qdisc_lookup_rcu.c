
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdev_queue {int qdisc_sleeping; } ;
struct net_device {int qdisc; } ;
struct Qdisc {int dummy; } ;


 struct netdev_queue* dev_ingress_queue_rcu (struct net_device*) ;
 struct Qdisc* qdisc_match_from_root (int ,int ) ;

struct Qdisc *qdisc_lookup_rcu(struct net_device *dev, u32 handle)
{
 struct netdev_queue *nq;
 struct Qdisc *q;

 if (!handle)
  return ((void*)0);
 q = qdisc_match_from_root(dev->qdisc, handle);
 if (q)
  goto out;

 nq = dev_ingress_queue_rcu(dev);
 if (nq)
  q = qdisc_match_from_root(nq->qdisc_sleeping, handle);
out:
 return q;
}
