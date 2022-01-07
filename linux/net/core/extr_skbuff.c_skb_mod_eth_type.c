
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum; } ;
struct ethhdr {int h_proto; } ;
typedef int diff ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int csum_partial (char*,int,int ) ;

__attribute__((used)) static void skb_mod_eth_type(struct sk_buff *skb, struct ethhdr *hdr,
        __be16 ethertype)
{
 if (skb->ip_summed == CHECKSUM_COMPLETE) {
  __be16 diff[] = { ~hdr->h_proto, ethertype };

  skb->csum = csum_partial((char *)diff, sizeof(diff), skb->csum);
 }

 hdr->h_proto = ethertype;
}
