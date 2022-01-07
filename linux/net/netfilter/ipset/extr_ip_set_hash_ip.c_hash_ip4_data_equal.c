
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_ip4_elem {scalar_t__ ip; } ;



__attribute__((used)) static inline bool
hash_ip4_data_equal(const struct hash_ip4_elem *e1,
      const struct hash_ip4_elem *e2,
      u32 *multi)
{
 return e1->ip == e2->ip;
}
