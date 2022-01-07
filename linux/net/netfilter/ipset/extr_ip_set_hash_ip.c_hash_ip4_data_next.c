
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ip4_elem {int ip; } ;



__attribute__((used)) static inline void
hash_ip4_data_next(struct hash_ip4_elem *next, const struct hash_ip4_elem *e)
{
 next->ip = e->ip;
}
