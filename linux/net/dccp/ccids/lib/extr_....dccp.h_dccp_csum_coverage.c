
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {unsigned int len; } ;
struct dccp_hdr {int dccph_cscov; int dccph_doff; } ;


 struct dccp_hdr* dccp_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int dccp_csum_coverage(const struct sk_buff *skb)
{
 const struct dccp_hdr* dh = dccp_hdr(skb);

 if (dh->dccph_cscov == 0)
  return skb->len;
 return (dh->dccph_doff + dh->dccph_cscov - 1) * sizeof(u32);
}
