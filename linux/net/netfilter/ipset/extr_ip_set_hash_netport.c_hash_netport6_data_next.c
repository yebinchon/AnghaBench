
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netport6_elem {int port; } ;



__attribute__((used)) static inline void
hash_netport6_data_next(struct hash_netport6_elem *next,
   const struct hash_netport6_elem *d)
{
 next->port = d->port;
}
