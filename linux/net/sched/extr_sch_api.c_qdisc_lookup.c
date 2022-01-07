
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int qdisc_sleeping; } ;


 TYPE_1__* dev_ingress_queue (struct net_device*) ;
 struct Qdisc* qdisc_match_from_root (int ,int ) ;

struct Qdisc *qdisc_lookup(struct net_device *dev, u32 handle)
{
 struct Qdisc *q;

 if (!handle)
  return ((void*)0);
 q = qdisc_match_from_root(dev->qdisc, handle);
 if (q)
  goto out;

 if (dev_ingress_queue(dev))
  q = qdisc_match_from_root(
   dev_ingress_queue(dev)->qdisc_sleeping,
   handle);
out:
 return q;
}
