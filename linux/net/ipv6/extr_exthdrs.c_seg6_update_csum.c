
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6_sr_hdr {int segments_left; struct in6_addr* segments; } ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int daddr; } ;


 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int update_csum_diff16 (struct sk_buff*,int *,int *) ;
 int update_csum_diff4 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void seg6_update_csum(struct sk_buff *skb)
{
 struct ipv6_sr_hdr *hdr;
 struct in6_addr *addr;
 __be32 from, to;





 hdr = (struct ipv6_sr_hdr *)skb_transport_header(skb);
 addr = hdr->segments + hdr->segments_left;

 hdr->segments_left++;
 from = *(__be32 *)hdr;

 hdr->segments_left--;
 to = *(__be32 *)hdr;



 update_csum_diff4(skb, from, to);



 update_csum_diff16(skb, (__be32 *)(&ipv6_hdr(skb)->daddr),
      (__be32 *)addr);
}
