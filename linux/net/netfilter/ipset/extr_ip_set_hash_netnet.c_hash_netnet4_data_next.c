
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netnet4_elem {int ipcmp; } ;



__attribute__((used)) static inline void
hash_netnet4_data_next(struct hash_netnet4_elem *next,
         const struct hash_netnet4_elem *d)
{
 next->ipcmp = d->ipcmp;
}
