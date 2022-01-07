
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int IP_HASHBITS ;
 int hash_32 (int ,int ) ;
 int ipv6_addr_hash (struct in6_addr const*) ;

__attribute__((used)) static inline int hash_ip6(const struct in6_addr *ip)
{
 return hash_32(ipv6_addr_hash(ip), IP_HASHBITS);
}
