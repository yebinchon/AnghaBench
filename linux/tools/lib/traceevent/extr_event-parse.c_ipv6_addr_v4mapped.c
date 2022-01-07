
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; } ;


 int htonl (int) ;

__attribute__((used)) static inline bool ipv6_addr_v4mapped(const struct in6_addr *a)
{
 return ((unsigned long)(a->s6_addr32[0] | a->s6_addr32[1]) |
  (unsigned long)(a->s6_addr32[2] ^ htonl(0x0000ffff))) == 0UL;
}
