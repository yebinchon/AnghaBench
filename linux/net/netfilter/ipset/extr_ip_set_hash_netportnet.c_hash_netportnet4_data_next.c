
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netportnet4_elem {int port; int ipcmp; } ;



__attribute__((used)) static inline void
hash_netportnet4_data_next(struct hash_netportnet4_elem *next,
      const struct hash_netportnet4_elem *d)
{
 next->ipcmp = d->ipcmp;
 next->port = d->port;
}
