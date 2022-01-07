
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum_start; int transport_header; int network_header; int mac_header; int inner_transport_header; int inner_network_header; int inner_mac_header; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ skb_mac_header_was_set (struct sk_buff*) ;

void skb_headers_offset_update(struct sk_buff *skb, int off)
{

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  skb->csum_start += off;

 skb->transport_header += off;
 skb->network_header += off;
 if (skb_mac_header_was_set(skb))
  skb->mac_header += off;
 skb->inner_transport_header += off;
 skb->inner_network_header += off;
 skb->inner_mac_header += off;
}
