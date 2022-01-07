
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlvtype_proc {unsigned char const type; int (* func ) (struct sk_buff*,int) ;} ;
struct sk_buff {int dummy; } ;




 int ip6_tlvopt_unknown (struct sk_buff*,int,int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int* skb_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ip6_parse_tlv(const struct tlvtype_proc *procs,
     struct sk_buff *skb,
     int max_count)
{
 int len = (skb_transport_header(skb)[1] + 1) << 3;
 const unsigned char *nh = skb_network_header(skb);
 int off = skb_network_header_len(skb);
 const struct tlvtype_proc *curr;
 bool disallow_unknowns = 0;
 int tlv_count = 0;
 int padlen = 0;

 if (unlikely(max_count < 0)) {
  disallow_unknowns = 1;
  max_count = -max_count;
 }

 if (skb_transport_offset(skb) + len > skb_headlen(skb))
  goto bad;

 off += 2;
 len -= 2;

 while (len > 0) {
  int optlen = nh[off + 1] + 2;
  int i;

  switch (nh[off]) {
  case 129:
   optlen = 1;
   padlen++;
   if (padlen > 7)
    goto bad;
   break;

  case 128:





   padlen += optlen;
   if (padlen > 7)
    goto bad;




   for (i = 2; i < optlen; i++) {
    if (nh[off + i] != 0)
     goto bad;
   }
   break;

  default:
   if (optlen > len)
    goto bad;

   tlv_count++;
   if (tlv_count > max_count)
    goto bad;

   for (curr = procs; curr->type >= 0; curr++) {
    if (curr->type == nh[off]) {



     if (curr->func(skb, off) == 0)
      return 0;
     break;
    }
   }
   if (curr->type < 0 &&
       !ip6_tlvopt_unknown(skb, off, disallow_unknowns))
    return 0;

   padlen = 0;
   break;
  }
  off += optlen;
  len -= optlen;
 }

 if (len == 0)
  return 1;
bad:
 kfree_skb(skb);
 return 0;
}
