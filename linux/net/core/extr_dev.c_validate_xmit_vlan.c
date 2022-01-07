
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int vlan_proto; } ;
typedef int netdev_features_t ;


 struct sk_buff* __vlan_hwaccel_push_inside (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int vlan_hw_offload_capable (int ,int ) ;

__attribute__((used)) static struct sk_buff *validate_xmit_vlan(struct sk_buff *skb,
       netdev_features_t features)
{
 if (skb_vlan_tag_present(skb) &&
     !vlan_hw_offload_capable(features, skb->vlan_proto))
  skb = __vlan_hwaccel_push_inside(skb);
 return skb;
}
