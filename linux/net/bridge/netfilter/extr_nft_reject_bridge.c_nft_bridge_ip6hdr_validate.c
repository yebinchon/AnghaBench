
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct ipv6hdr {int version; int payload_len; } ;


 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static int nft_bridge_ip6hdr_validate(struct sk_buff *skb)
{
 struct ipv6hdr *hdr;
 u32 pkt_len;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  return 0;

 hdr = ipv6_hdr(skb);
 if (hdr->version != 6)
  return 0;

 pkt_len = ntohs(hdr->payload_len);
 if (pkt_len + sizeof(struct ipv6hdr) > skb->len)
  return 0;

 return 1;
}
