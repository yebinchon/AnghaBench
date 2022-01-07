
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int vlan_proto; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETDEV_TX_OK ;
 struct sk_buff* __vlan_hwaccel_push_inside (struct sk_buff*) ;
 int netdev_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ;
 int netif_skb_features (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_hw_offload_capable (int ,int ) ;

__attribute__((used)) static int netpoll_start_xmit(struct sk_buff *skb, struct net_device *dev,
         struct netdev_queue *txq)
{
 int status = NETDEV_TX_OK;
 netdev_features_t features;

 features = netif_skb_features(skb);

 if (skb_vlan_tag_present(skb) &&
     !vlan_hw_offload_capable(features, skb->vlan_proto)) {
  skb = __vlan_hwaccel_push_inside(skb);
  if (unlikely(!skb)) {




   goto out;
  }
 }

 status = netdev_start_xmit(skb, dev, txq, 0);

out:
 return status;
}
