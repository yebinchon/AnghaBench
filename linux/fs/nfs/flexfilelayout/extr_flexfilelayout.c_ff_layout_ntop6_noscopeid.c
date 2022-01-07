
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {struct in6_addr const* s6_addr32; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ ipv6_addr_any (struct in6_addr const*) ;
 scalar_t__ ipv6_addr_loopback (struct in6_addr const*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr const*) ;
 size_t snprintf (char*,int const,char*,...) ;

__attribute__((used)) static size_t
ff_layout_ntop6_noscopeid(const struct sockaddr *sap, char *buf,
     const int buflen)
{
 const struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sap;
 const struct in6_addr *addr = &sin6->sin6_addr;






 if (ipv6_addr_any(addr))
  return snprintf(buf, buflen, "::");






 if (ipv6_addr_loopback(addr))
  return snprintf(buf, buflen, "::1");







 if (ipv6_addr_v4mapped(addr))
  return snprintf(buf, buflen, "::ffff:%pI4",
     &addr->s6_addr32[3]);




 return snprintf(buf, buflen, "%pI6c", addr);
}
