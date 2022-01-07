
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int limit; int shared; int batchcount; int size; int name; int num; } ;
typedef int gfp_t ;


 int PAGE_SIZE ;
 int cache_random_seq_create (struct kmem_cache*,int ,int ) ;
 int do_tune_cpucache (struct kmem_cache*,int,int,int,int ) ;
 int is_root_cache (struct kmem_cache*) ;
 struct kmem_cache* memcg_root_cache (struct kmem_cache*) ;
 int num_possible_cpus () ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int enable_cpucache(struct kmem_cache *cachep, gfp_t gfp)
{
 int err;
 int limit = 0;
 int shared = 0;
 int batchcount = 0;

 err = cache_random_seq_create(cachep, cachep->num, gfp);
 if (err)
  goto end;

 if (!is_root_cache(cachep)) {
  struct kmem_cache *root = memcg_root_cache(cachep);
  limit = root->limit;
  shared = root->shared;
  batchcount = root->batchcount;
 }

 if (limit && shared && batchcount)
  goto skip_setup;
 if (cachep->size > 131072)
  limit = 1;
 else if (cachep->size > PAGE_SIZE)
  limit = 8;
 else if (cachep->size > 1024)
  limit = 24;
 else if (cachep->size > 256)
  limit = 54;
 else
  limit = 120;
 shared = 0;
 if (cachep->size <= PAGE_SIZE && num_possible_cpus() > 1)
  shared = 8;
 batchcount = (limit + 1) / 2;
skip_setup:
 err = do_tune_cpucache(cachep, limit, batchcount, shared, gfp);
end:
 if (err)
  pr_err("enable_cpucache failed for %s, error %d\n",
         cachep->name, -err);
 return err;
}
