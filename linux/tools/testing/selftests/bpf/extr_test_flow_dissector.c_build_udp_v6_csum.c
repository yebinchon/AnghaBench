
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct udphdr {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; int nexthdr; int saddr; } ;


 unsigned long add_csum_hword (void*,int) ;
 int build_ip_csum (void*,int,unsigned long) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static uint16_t build_udp_v6_csum(const struct ipv6hdr *ip6h,
      const struct udphdr *udph,
      int num_words)
{
 unsigned long pseudo_sum;
 int num_u16 = sizeof(ip6h->saddr);

 pseudo_sum = add_csum_hword((void *) &ip6h->saddr, num_u16);
 pseudo_sum += htons(ip6h->nexthdr);
 pseudo_sum += ip6h->payload_len;
 return build_ip_csum((void *) udph, num_words, pseudo_sum);
}
