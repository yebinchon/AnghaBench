
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6hdr {int dummy; } ;


 int INET_ECN_MASK ;
 int ipv6_get_dsfield (struct ipv6hdr const*) ;

__attribute__((used)) static inline u8 ip6_frag_ecn(const struct ipv6hdr *ipv6h)
{
 return 1 << (ipv6_get_dsfield(ipv6h) & INET_ECN_MASK);
}
