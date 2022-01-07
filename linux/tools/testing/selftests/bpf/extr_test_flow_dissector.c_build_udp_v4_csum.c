
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct udphdr {scalar_t__ len; } ;
struct iphdr {int saddr; } ;


 int IPPROTO_UDP ;
 unsigned long add_csum_hword (void*,int) ;
 int build_ip_csum (void*,int,unsigned long) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static uint16_t build_udp_v4_csum(const struct iphdr *iph,
      const struct udphdr *udph,
      int num_words)
{
 unsigned long pseudo_sum;
 int num_u16 = sizeof(iph->saddr);

 pseudo_sum = add_csum_hword((void *) &iph->saddr, num_u16);
 pseudo_sum += htons(IPPROTO_UDP);
 pseudo_sum += udph->len;
 return build_ip_csum((void *) udph, num_words, pseudo_sum);
}
