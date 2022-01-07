
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr32; } ;


 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static inline int
iprange_ipv6_lt(const struct in6_addr *a, const struct in6_addr *b)
{
 unsigned int i;

 for (i = 0; i < 4; ++i) {
  if (a->s6_addr32[i] != b->s6_addr32[i])
   return ntohl(a->s6_addr32[i]) < ntohl(b->s6_addr32[i]);
 }

 return 0;
}
