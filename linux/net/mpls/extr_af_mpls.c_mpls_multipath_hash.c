
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mpls_shim_hdr {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_entry_decoded {scalar_t__ label; int bos; } ;
struct ipv6hdr {scalar_t__ nexthdr; int daddr; int saddr; } ;
struct iphdr {int version; int protocol; int daddr; int saddr; } ;


 int MAX_MP_SELECT_LABELS ;
 scalar_t__ MPLS_LABEL_ENTROPY ;
 scalar_t__ MPLS_LABEL_FIRST_UNRESERVED ;
 int __ipv6_addr_jhash (int *,int ) ;
 int jhash_1word (scalar_t__,int ) ;
 int jhash_3words (int ,int ,int ,int ) ;
 scalar_t__ likely (int) ;
 struct mpls_entry_decoded mpls_entry_decode (struct mpls_shim_hdr*) ;
 struct mpls_shim_hdr* mpls_hdr (struct sk_buff*) ;
 int ntohl (int ) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,unsigned int) ;

__attribute__((used)) static u32 mpls_multipath_hash(struct mpls_route *rt, struct sk_buff *skb)
{
 struct mpls_entry_decoded dec;
 unsigned int mpls_hdr_len = 0;
 struct mpls_shim_hdr *hdr;
 bool eli_seen = 0;
 int label_index;
 u32 hash = 0;

 for (label_index = 0; label_index < MAX_MP_SELECT_LABELS;
      label_index++) {
  mpls_hdr_len += sizeof(*hdr);
  if (!pskb_may_pull(skb, mpls_hdr_len))
   break;


  hdr = mpls_hdr(skb) + label_index;
  dec = mpls_entry_decode(hdr);




  if (likely(dec.label >= MPLS_LABEL_FIRST_UNRESERVED)) {
   hash = jhash_1word(dec.label, hash);







   if (eli_seen)
    break;
  } else if (dec.label == MPLS_LABEL_ENTROPY) {
   eli_seen = 1;
  }

  if (!dec.bos)
   continue;


  if (pskb_may_pull(skb, mpls_hdr_len + sizeof(struct iphdr))) {
   const struct iphdr *v4hdr;

   v4hdr = (const struct iphdr *)(hdr + 1);
   if (v4hdr->version == 4) {
    hash = jhash_3words(ntohl(v4hdr->saddr),
          ntohl(v4hdr->daddr),
          v4hdr->protocol, hash);
   } else if (v4hdr->version == 6 &&
       pskb_may_pull(skb, mpls_hdr_len +
       sizeof(struct ipv6hdr))) {
    const struct ipv6hdr *v6hdr;

    v6hdr = (const struct ipv6hdr *)(hdr + 1);
    hash = __ipv6_addr_jhash(&v6hdr->saddr, hash);
    hash = __ipv6_addr_jhash(&v6hdr->daddr, hash);
    hash = jhash_1word(v6hdr->nexthdr, hash);
   }
  }

  break;
 }

 return hash;
}
