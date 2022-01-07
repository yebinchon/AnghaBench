
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int in6; } ;
struct hash_ipmark6_elem {scalar_t__ mark; TYPE_1__ ip; } ;


 scalar_t__ ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static inline bool
hash_ipmark6_data_equal(const struct hash_ipmark6_elem *ip1,
   const struct hash_ipmark6_elem *ip2,
   u32 *multi)
{
 return ipv6_addr_equal(&ip1->ip.in6, &ip2->ip.in6) &&
        ip1->mark == ip2->mark;
}
