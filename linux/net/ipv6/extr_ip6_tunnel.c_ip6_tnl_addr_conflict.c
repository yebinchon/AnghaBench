
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipv6hdr {int saddr; } ;
struct TYPE_2__ {int raddr; } ;
struct ip6_tnl {TYPE_1__ parms; } ;


 int ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static inline bool
ip6_tnl_addr_conflict(const struct ip6_tnl *t, const struct ipv6hdr *hdr)
{
 return ipv6_addr_equal(&t->parms.raddr, &hdr->saddr);
}
