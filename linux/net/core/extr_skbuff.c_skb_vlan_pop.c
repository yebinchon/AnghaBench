
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int protocol; } ;
typedef int __be16 ;


 int __skb_vlan_pop (struct sk_buff*,int *) ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int eth_type_vlan (int ) ;
 scalar_t__ likely (int) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int skb_vlan_pop(struct sk_buff *skb)
{
 u16 vlan_tci;
 __be16 vlan_proto;
 int err;

 if (likely(skb_vlan_tag_present(skb))) {
  __vlan_hwaccel_clear_tag(skb);
 } else {
  if (unlikely(!eth_type_vlan(skb->protocol)))
   return 0;

  err = __skb_vlan_pop(skb, &vlan_tci);
  if (err)
   return err;
 }

 if (likely(!eth_type_vlan(skb->protocol)))
  return 0;

 vlan_proto = skb->protocol;
 err = __skb_vlan_pop(skb, &vlan_tci);
 if (unlikely(err))
  return err;

 __vlan_hwaccel_put_tag(skb, vlan_proto, vlan_tci);
 return 0;
}
