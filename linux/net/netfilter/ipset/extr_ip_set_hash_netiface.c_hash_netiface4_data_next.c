
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netiface4_elem {int ip; } ;



__attribute__((used)) static inline void
hash_netiface4_data_next(struct hash_netiface4_elem *next,
    const struct hash_netiface4_elem *d)
{
 next->ip = d->ip;
}
