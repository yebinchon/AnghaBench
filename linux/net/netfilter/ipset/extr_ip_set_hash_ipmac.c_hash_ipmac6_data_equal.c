
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int in6; } ;
struct hash_ipmac6_elem {int ether; TYPE_1__ ip; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static inline bool
hash_ipmac6_data_equal(const struct hash_ipmac6_elem *e1,
         const struct hash_ipmac6_elem *e2,
         u32 *multi)
{
 return ipv6_addr_equal(&e1->ip.in6, &e2->ip.in6) &&
  ether_addr_equal(e1->ether, e2->ether);
}
