
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sja1105_meta {int tstamp; int dmac_byte_4; int dmac_byte_3; } ;
struct ethhdr {int * h_dest; } ;
struct TYPE_2__ {int meta_tstamp; } ;


 TYPE_1__* SJA1105_SKB_CB (struct sk_buff*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;

__attribute__((used)) static void sja1105_transfer_meta(struct sk_buff *skb,
      const struct sja1105_meta *meta)
{
 struct ethhdr *hdr = eth_hdr(skb);

 hdr->h_dest[3] = meta->dmac_byte_3;
 hdr->h_dest[4] = meta->dmac_byte_4;
 SJA1105_SKB_CB(skb)->meta_tstamp = meta->tstamp;
}
