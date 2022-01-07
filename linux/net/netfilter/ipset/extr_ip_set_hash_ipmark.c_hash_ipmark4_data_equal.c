
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_ipmark4_elem {scalar_t__ ip; scalar_t__ mark; } ;



__attribute__((used)) static inline bool
hash_ipmark4_data_equal(const struct hash_ipmark4_elem *ip1,
   const struct hash_ipmark4_elem *ip2,
   u32 *multi)
{
 return ip1->ip == ip2->ip &&
        ip1->mark == ip2->mark;
}
