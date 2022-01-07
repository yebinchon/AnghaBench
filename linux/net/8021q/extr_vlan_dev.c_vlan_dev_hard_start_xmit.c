
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vlan_pcpu_stats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_proto; } ;
struct vlan_dev_priv {scalar_t__ vlan_proto; int flags; TYPE_1__* vlan_pcpu_stats; int real_dev; int vlan_id; } ;
struct sk_buff {unsigned int len; int dev; int priority; scalar_t__ data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int tx_dropped; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int VLAN_FLAG_REORDER_HDR ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int netpoll_tx_running (struct net_device*) ;
 int this_cpu_inc (int ) ;
 struct vlan_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlan_dev_get_egress_qos_mask (struct net_device*,int ) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;
 int vlan_netpoll_send_skb (struct vlan_dev_priv*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t vlan_dev_hard_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct vlan_ethhdr *veth = (struct vlan_ethhdr *)(skb->data);
 unsigned int len;
 int ret;






 if (veth->h_vlan_proto != vlan->vlan_proto ||
     vlan->flags & VLAN_FLAG_REORDER_HDR) {
  u16 vlan_tci;
  vlan_tci = vlan->vlan_id;
  vlan_tci |= vlan_dev_get_egress_qos_mask(dev, skb->priority);
  __vlan_hwaccel_put_tag(skb, vlan->vlan_proto, vlan_tci);
 }

 skb->dev = vlan->real_dev;
 len = skb->len;
 if (unlikely(netpoll_tx_running(dev)))
  return vlan_netpoll_send_skb(vlan, skb);

 ret = dev_queue_xmit(skb);

 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct vlan_pcpu_stats *stats;

  stats = this_cpu_ptr(vlan->vlan_pcpu_stats);
  u64_stats_update_begin(&stats->syncp);
  stats->tx_packets++;
  stats->tx_bytes += len;
  u64_stats_update_end(&stats->syncp);
 } else {
  this_cpu_inc(vlan->vlan_pcpu_stats->tx_dropped);
 }

 return ret;
}
