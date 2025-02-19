
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; int csum_start; } ;
struct hsr_port {TYPE_1__* hsr; } ;
struct hsr_frame_info {scalar_t__ is_vlan; } ;
struct TYPE_2__ {int prot_version; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 scalar_t__ HSR_HLEN ;
 scalar_t__ VLAN_HLEN ;
 struct sk_buff* __pskb_copy (struct sk_buff*,scalar_t__,int ) ;
 int hsr_fill_tag (struct sk_buff*,struct hsr_frame_info*,struct hsr_port*,int ) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 unsigned char* skb_mac_header (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *create_tagged_skb(struct sk_buff *skb_o,
      struct hsr_frame_info *frame,
      struct hsr_port *port)
{
 int movelen;
 unsigned char *dst, *src;
 struct sk_buff *skb;


 skb = __pskb_copy(skb_o, skb_headroom(skb_o) + HSR_HLEN, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);
 skb_reset_mac_header(skb);

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  skb->csum_start += HSR_HLEN;

 movelen = ETH_HLEN;
 if (frame->is_vlan)
  movelen += VLAN_HLEN;

 src = skb_mac_header(skb);
 dst = skb_push(skb, HSR_HLEN);
 memmove(dst, src, movelen);
 skb_reset_mac_header(skb);

 hsr_fill_tag(skb, frame, port, port->hsr->prot_version);

 return skb;
}
