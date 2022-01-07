
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int xmit_work; int xmit_queue; } ;
struct TYPE_2__ {int deferred_xmit; } ;


 TYPE_1__* DSA_SKB_CB (struct sk_buff*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void *dsa_defer_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);

 DSA_SKB_CB(skb)->deferred_xmit = 1;

 skb_queue_tail(&dp->xmit_queue, skb);
 schedule_work(&dp->xmit_work);
 return ((void*)0);
}
