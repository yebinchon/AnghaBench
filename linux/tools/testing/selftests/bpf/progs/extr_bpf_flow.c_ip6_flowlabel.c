
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int dummy; } ;
typedef int __be32 ;


 int IPV6_FLOWLABEL_MASK ;

__attribute__((used)) static inline __be32 ip6_flowlabel(const struct ipv6hdr *hdr)
{
 return *(__be32 *)hdr & IPV6_FLOWLABEL_MASK;
}
