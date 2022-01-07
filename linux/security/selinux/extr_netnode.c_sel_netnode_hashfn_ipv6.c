
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; } ;


 int SEL_NETNODE_HASH_SIZE ;

__attribute__((used)) static unsigned int sel_netnode_hashfn_ipv6(const struct in6_addr *addr)
{



 return (addr->s6_addr32[3] & (SEL_NETNODE_HASH_SIZE - 1));
}
