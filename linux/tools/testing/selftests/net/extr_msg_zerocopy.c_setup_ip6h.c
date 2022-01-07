
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct ipv6hdr {int version; int hop_limit; int daddr; int saddr; int nexthdr; int payload_len; } ;


 int IPPROTO_EGP ;
 int cfg_dst_addr ;
 int cfg_src_addr ;
 int htons (int ) ;
 int memset (struct ipv6hdr*,int ,int) ;

__attribute__((used)) static int setup_ip6h(struct ipv6hdr *ip6h, uint16_t payload_len)
{
 struct sockaddr_in6 *daddr = (void *) &cfg_dst_addr;
 struct sockaddr_in6 *saddr = (void *) &cfg_src_addr;

 memset(ip6h, 0, sizeof(*ip6h));

 ip6h->version = 6;
 ip6h->payload_len = htons(payload_len);
 ip6h->nexthdr = IPPROTO_EGP;
 ip6h->hop_limit = 2;
 ip6h->saddr = saddr->sin6_addr;
 ip6h->daddr = daddr->sin6_addr;

 return sizeof(*ip6h);
}
