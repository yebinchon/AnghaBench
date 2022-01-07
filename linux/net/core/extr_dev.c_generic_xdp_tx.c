
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int HARD_TX_LOCK (struct net_device*,struct netdev_queue*,int) ;
 int HARD_TX_UNLOCK (struct net_device*,struct netdev_queue*) ;
 int XDP_TX ;
 scalar_t__ dev_xmit_complete (int) ;
 int kfree_skb (struct sk_buff*) ;
 struct netdev_queue* netdev_core_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 int netdev_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int ) ;
 int netif_xmit_stopped (struct netdev_queue*) ;
 int smp_processor_id () ;
 int trace_xdp_exception (struct net_device*,struct bpf_prog*,int ) ;

void generic_xdp_tx(struct sk_buff *skb, struct bpf_prog *xdp_prog)
{
 struct net_device *dev = skb->dev;
 struct netdev_queue *txq;
 bool free_skb = 1;
 int cpu, rc;

 txq = netdev_core_pick_tx(dev, skb, ((void*)0));
 cpu = smp_processor_id();
 HARD_TX_LOCK(dev, txq, cpu);
 if (!netif_xmit_stopped(txq)) {
  rc = netdev_start_xmit(skb, dev, txq, 0);
  if (dev_xmit_complete(rc))
   free_skb = 0;
 }
 HARD_TX_UNLOCK(dev, txq);
 if (free_skb) {
  trace_xdp_exception(dev, xdp_prog, XDP_TX);
  kfree_skb(skb);
 }
}
