
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct in6_addr {scalar_t__* s6_addr32; } ;
typedef scalar_t__ __be64 ;


 scalar_t__ be64_to_cpu (scalar_t__ const) ;
 scalar_t__ ntohl (scalar_t__) ;

int rds_addr_cmp(const struct in6_addr *addr1,
   const struct in6_addr *addr2)
{
 u32 a, b;
 int i;

 for (i = 0; i < 4; i++) {
  if (addr1->s6_addr32[i] != addr2->s6_addr32[i]) {
   a = ntohl(addr1->s6_addr32[i]);
   b = ntohl(addr2->s6_addr32[i]);
   if (a < b)
    return -1;
   else if (a > b)
    return 1;
  }
 }
 return 0;

}
