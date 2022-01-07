
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct bucket_table {size_t size; int * buckets; int hash_rnd; int walkers; int rcu; int dep_map; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RHT_NULLS_HEAD (int ) ;
 int __GFP_NOFAIL ;
 int buckets ;
 int get_random_u32 () ;
 struct bucket_table* kvzalloc (int ,int) ;
 int lockdep_init_map (int *,char*,struct lock_class_key*,int ) ;
 struct bucket_table* nested_bucket_table_alloc (struct rhashtable*,size_t,int) ;
 int rcu_head_init (int *) ;
 int struct_size (struct bucket_table*,int ,size_t) ;

__attribute__((used)) static struct bucket_table *bucket_table_alloc(struct rhashtable *ht,
            size_t nbuckets,
            gfp_t gfp)
{
 struct bucket_table *tbl = ((void*)0);
 size_t size;
 int i;
 static struct lock_class_key __key;

 tbl = kvzalloc(struct_size(tbl, buckets, nbuckets), gfp);

 size = nbuckets;

 if (tbl == ((void*)0) && (gfp & ~__GFP_NOFAIL) != GFP_KERNEL) {
  tbl = nested_bucket_table_alloc(ht, nbuckets, gfp);
  nbuckets = 0;
 }

 if (tbl == ((void*)0))
  return ((void*)0);

 lockdep_init_map(&tbl->dep_map, "rhashtable_bucket", &__key, 0);

 tbl->size = size;

 rcu_head_init(&tbl->rcu);
 INIT_LIST_HEAD(&tbl->walkers);

 tbl->hash_rnd = get_random_u32();

 for (i = 0; i < nbuckets; i++)
  INIT_RHT_NULLS_HEAD(tbl->buckets[i]);

 return tbl;
}
