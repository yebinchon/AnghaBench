
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_ipmac4_elem {scalar_t__ ip; int ether; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;

__attribute__((used)) static inline bool
hash_ipmac4_data_equal(const struct hash_ipmac4_elem *e1,
         const struct hash_ipmac4_elem *e2,
         u32 *multi)
{
 return e1->ip == e2->ip && ether_addr_equal(e1->ether, e2->ether);
}
