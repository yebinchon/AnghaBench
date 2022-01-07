
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {unsigned int drc_hashsize; struct nfsd_drc_bucket* drc_hashtbl; } ;
struct nfsd_drc_bucket {int cache_lock; int lru_head; } ;


 scalar_t__ list_empty (int *) ;
 scalar_t__ prune_bucket (struct nfsd_drc_bucket*,struct nfsd_net*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long
prune_cache_entries(struct nfsd_net *nn)
{
 unsigned int i;
 long freed = 0;

 for (i = 0; i < nn->drc_hashsize; i++) {
  struct nfsd_drc_bucket *b = &nn->drc_hashtbl[i];

  if (list_empty(&b->lru_head))
   continue;
  spin_lock(&b->cache_lock);
  freed += prune_bucket(b, nn);
  spin_unlock(&b->cache_lock);
 }
 return freed;
}
