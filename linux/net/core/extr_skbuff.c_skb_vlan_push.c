
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int data; int mac_len; int vlan_proto; int protocol; } ;
typedef int __be16 ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int __vlan_insert_tag (struct sk_buff*,int ,int ) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_postpush_rcsum (struct sk_buff*,int,scalar_t__) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

int skb_vlan_push(struct sk_buff *skb, __be16 vlan_proto, u16 vlan_tci)
{
 if (skb_vlan_tag_present(skb)) {
  int offset = skb->data - skb_mac_header(skb);
  int err;

  if (WARN_ONCE(offset,
         "skb_vlan_push got skb with skb->data not at mac header (offset %d)\n",
         offset)) {
   return -EINVAL;
  }

  err = __vlan_insert_tag(skb, skb->vlan_proto,
     skb_vlan_tag_get(skb));
  if (err)
   return err;

  skb->protocol = skb->vlan_proto;
  skb->mac_len += VLAN_HLEN;

  skb_postpush_rcsum(skb, skb->data + (2 * ETH_ALEN), VLAN_HLEN);
 }
 __vlan_hwaccel_put_tag(skb, vlan_proto, vlan_tci);
 return 0;
}
