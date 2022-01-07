
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; } ;


 int htonl (int) ;

__attribute__((used)) static bool ipv6_reserved_interfaceid(struct in6_addr address)
{
 if ((address.s6_addr32[2] | address.s6_addr32[3]) == 0)
  return 1;

 if (address.s6_addr32[2] == htonl(0x02005eff) &&
     ((address.s6_addr32[3] & htonl(0xfe000000)) == htonl(0xfe000000)))
  return 1;

 if (address.s6_addr32[2] == htonl(0xfdffffff) &&
     ((address.s6_addr32[3] & htonl(0xffffff80)) == htonl(0xffffff80)))
  return 1;

 return 0;
}
