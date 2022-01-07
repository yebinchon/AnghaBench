
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
struct ethhdr {int h_proto; int h_dest; } ;


 scalar_t__ ETH_P_SJA1105_META ;
 int SJA1105_LINKLOCAL_FILTER_A ;
 int SJA1105_LINKLOCAL_FILTER_A_MASK ;
 int SJA1105_LINKLOCAL_FILTER_B ;
 int SJA1105_LINKLOCAL_FILTER_B_MASK ;
 struct ethhdr* eth_hdr (struct sk_buff const*) ;
 int ether_addr_to_u64 (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static inline bool sja1105_is_link_local(const struct sk_buff *skb)
{
 const struct ethhdr *hdr = eth_hdr(skb);
 u64 dmac = ether_addr_to_u64(hdr->h_dest);

 if (ntohs(hdr->h_proto) == ETH_P_SJA1105_META)
  return 0;
 if ((dmac & SJA1105_LINKLOCAL_FILTER_A_MASK) ==
      SJA1105_LINKLOCAL_FILTER_A)
  return 1;
 if ((dmac & SJA1105_LINKLOCAL_FILTER_B_MASK) ==
      SJA1105_LINKLOCAL_FILTER_B)
  return 1;
 return 0;
}
