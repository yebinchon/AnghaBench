
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int dev; int protocol; int pkt_type; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_port* dsa_ptr; } ;
struct dsa_slave_priv {int stats64; } ;
struct dsa_port {struct sk_buff* (* rcv ) (struct sk_buff*,struct net_device*,struct packet_type*) ;} ;


 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int PACKET_HOST ;
 scalar_t__ dsa_skb_defer_rx_timestamp (struct dsa_slave_priv*,struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct dsa_slave_priv* netdev_priv (int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct sk_buff*,struct net_device*,struct packet_type*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dsa_switch_rcv(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pt, struct net_device *unused)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 struct sk_buff *nskb = ((void*)0);
 struct pcpu_sw_netstats *s;
 struct dsa_slave_priv *p;

 if (unlikely(!cpu_dp)) {
  kfree_skb(skb);
  return 0;
 }

 skb = skb_unshare(skb, GFP_ATOMIC);
 if (!skb)
  return 0;

 nskb = cpu_dp->rcv(skb, dev, pt);
 if (!nskb) {
  kfree_skb(skb);
  return 0;
 }

 skb = nskb;
 p = netdev_priv(skb->dev);
 skb_push(skb, ETH_HLEN);
 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, skb->dev);

 s = this_cpu_ptr(p->stats64);
 u64_stats_update_begin(&s->syncp);
 s->rx_packets++;
 s->rx_bytes += skb->len;
 u64_stats_update_end(&s->syncp);

 if (dsa_skb_defer_rx_timestamp(p, skb))
  return 0;

 netif_receive_skb(skb);

 return 0;
}
