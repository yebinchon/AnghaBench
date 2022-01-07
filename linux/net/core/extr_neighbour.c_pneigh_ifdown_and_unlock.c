
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pneigh_entry {struct net_device* dev; struct pneigh_entry* next; } ;
struct net_device {int dummy; } ;
struct neigh_table {int (* pdestructor ) (struct pneigh_entry*) ;int lock; struct pneigh_entry** phash_buckets; } ;


 int ENOENT ;
 size_t PNEIGH_HASHMASK ;
 int dev_put (struct net_device*) ;
 int kfree (struct pneigh_entry*) ;
 int stub1 (struct pneigh_entry*) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int pneigh_ifdown_and_unlock(struct neigh_table *tbl,
        struct net_device *dev)
{
 struct pneigh_entry *n, **np, *freelist = ((void*)0);
 u32 h;

 for (h = 0; h <= PNEIGH_HASHMASK; h++) {
  np = &tbl->phash_buckets[h];
  while ((n = *np) != ((void*)0)) {
   if (!dev || n->dev == dev) {
    *np = n->next;
    n->next = freelist;
    freelist = n;
    continue;
   }
   np = &n->next;
  }
 }
 write_unlock_bh(&tbl->lock);
 while ((n = freelist)) {
  freelist = n->next;
  n->next = ((void*)0);
  if (tbl->pdestructor)
   tbl->pdestructor(n);
  if (n->dev)
   dev_put(n->dev);
  kfree(n);
 }
 return -ENOENT;
}
