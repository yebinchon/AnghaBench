
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ipport4_elem {int port; int ip; } ;



__attribute__((used)) static inline void
hash_ipport4_data_next(struct hash_ipport4_elem *next,
         const struct hash_ipport4_elem *d)
{
 next->ip = d->ip;
 next->port = d->port;
}
