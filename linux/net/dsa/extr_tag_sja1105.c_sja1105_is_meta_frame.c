
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;


 scalar_t__ ETH_P_SJA1105_META ;
 scalar_t__ SJA1105_META_DMAC ;
 scalar_t__ SJA1105_META_SMAC ;
 struct ethhdr* eth_hdr (struct sk_buff const*) ;
 scalar_t__ ether_addr_to_u64 (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static inline bool sja1105_is_meta_frame(const struct sk_buff *skb)
{
 const struct ethhdr *hdr = eth_hdr(skb);
 u64 smac = ether_addr_to_u64(hdr->h_source);
 u64 dmac = ether_addr_to_u64(hdr->h_dest);

 if (smac != SJA1105_META_SMAC)
  return 0;
 if (dmac != SJA1105_META_DMAC)
  return 0;
 if (ntohs(hdr->h_proto) != ETH_P_SJA1105_META)
  return 0;
 return 1;
}
