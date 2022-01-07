
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct in6_addr {int dummy; } ;


 int IP6_GRE_HASH_SIZE_SHIFT ;
 int hash_32 (int ,int ) ;
 int ipv6_addr_hash (struct in6_addr const*) ;

__attribute__((used)) static u32 HASH_ADDR(const struct in6_addr *addr)
{
 u32 hash = ipv6_addr_hash(addr);

 return hash_32(hash, IP6_GRE_HASH_SIZE_SHIFT);
}
