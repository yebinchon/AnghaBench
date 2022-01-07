
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; int protocol; int csum_start; } ;
struct hsr_frame_info {scalar_t__ is_vlan; } ;
struct TYPE_2__ {int h_proto; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ HSR_HLEN ;
 scalar_t__ VLAN_HLEN ;
 struct sk_buff* __pskb_copy (struct sk_buff*,scalar_t__,int ) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 unsigned char* skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *create_stripped_skb(struct sk_buff *skb_in,
        struct hsr_frame_info *frame)
{
 struct sk_buff *skb;
 int copylen;
 unsigned char *dst, *src;

 skb_pull(skb_in, HSR_HLEN);
 skb = __pskb_copy(skb_in, skb_headroom(skb_in) - HSR_HLEN, GFP_ATOMIC);
 skb_push(skb_in, HSR_HLEN);
 if (!skb)
  return ((void*)0);

 skb_reset_mac_header(skb);

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  skb->csum_start -= HSR_HLEN;

 copylen = 2 * ETH_ALEN;
 if (frame->is_vlan)
  copylen += VLAN_HLEN;
 src = skb_mac_header(skb_in);
 dst = skb_mac_header(skb);
 memcpy(dst, src, copylen);

 skb->protocol = eth_hdr(skb)->h_proto;
 return skb;
}
