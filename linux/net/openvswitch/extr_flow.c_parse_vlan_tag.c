
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_head {int tci; int tpid; } ;
struct sk_buff {int data; int len; } ;
typedef int __be16 ;


 int ENOMEM ;
 int VLAN_CFI_MASK ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_push (struct sk_buff*,int) ;
 int __skb_vlan_pop (struct sk_buff*,int *) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int eth_type_vlan (int ) ;
 int htons (int ) ;
 scalar_t__ likely (int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_vlan_tag(struct sk_buff *skb, struct vlan_head *key_vh,
     bool untag_vlan)
{
 struct vlan_head *vh = (struct vlan_head *)skb->data;

 if (likely(!eth_type_vlan(vh->tpid)))
  return 0;

 if (unlikely(skb->len < sizeof(struct vlan_head) + sizeof(__be16)))
  return 0;

 if (unlikely(!pskb_may_pull(skb, sizeof(struct vlan_head) +
     sizeof(__be16))))
  return -ENOMEM;

 vh = (struct vlan_head *)skb->data;
 key_vh->tci = vh->tci | htons(VLAN_CFI_MASK);
 key_vh->tpid = vh->tpid;

 if (unlikely(untag_vlan)) {
  int offset = skb->data - skb_mac_header(skb);
  u16 tci;
  int err;

  __skb_push(skb, offset);
  err = __skb_vlan_pop(skb, &tci);
  __skb_pull(skb, offset);
  if (err)
   return err;
  __vlan_hwaccel_put_tag(skb, key_vh->tpid, tci);
 } else {
  __skb_pull(skb, sizeof(struct vlan_head));
 }
 return 1;
}
