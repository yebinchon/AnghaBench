
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; } ;


 int htonl (int) ;

__attribute__((used)) static inline bool ipv6_addr_is_isatap(const struct in6_addr *addr)
{
 return (addr->s6_addr32[2] | htonl(0x02000000)) == htonl(0x02005EFE);
}
