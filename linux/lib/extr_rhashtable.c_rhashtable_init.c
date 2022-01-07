
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rhashtable_params {int hashfn; scalar_t__ max_size; scalar_t__ min_size; int obj_cmpfn; scalar_t__ obj_hashfn; int key_len; } ;
struct TYPE_3__ {int max_size; int key_len; void* min_size; int hashfn; } ;
struct rhashtable {unsigned int max_elems; int key_len; int run_work; int tbl; int nelems; TYPE_1__ p; int lock; int mutex; } ;
struct bucket_table {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int HASH_MIN_SIZE ;
 int INIT_WORK (int *,int ) ;
 int RCU_INIT_POINTER (int ,struct bucket_table*) ;
 int __GFP_NOFAIL ;
 int atomic_set (int *,int ) ;
 struct bucket_table* bucket_table_alloc (struct rhashtable*,size_t,int) ;
 int jhash ;
 void* max_t (int ,void*,int ) ;
 int memcpy (TYPE_1__*,struct rhashtable_params const*,int) ;
 int memset (struct rhashtable*,int ,int) ;
 int mutex_init (int *) ;
 int rhashtable_jhash2 ;
 int rht_deferred_worker ;
 int rounddown_pow_of_two (scalar_t__) ;
 size_t rounded_hashtable_size (TYPE_1__*) ;
 void* roundup_pow_of_two (scalar_t__) ;
 int spin_lock_init (int *) ;
 int u16 ;
 scalar_t__ unlikely (int ) ;

int rhashtable_init(struct rhashtable *ht,
      const struct rhashtable_params *params)
{
 struct bucket_table *tbl;
 size_t size;

 if ((!params->key_len && !params->obj_hashfn) ||
     (params->obj_hashfn && !params->obj_cmpfn))
  return -EINVAL;

 memset(ht, 0, sizeof(*ht));
 mutex_init(&ht->mutex);
 spin_lock_init(&ht->lock);
 memcpy(&ht->p, params, sizeof(*params));

 if (params->min_size)
  ht->p.min_size = roundup_pow_of_two(params->min_size);


 ht->max_elems = 1u << 31;

 if (params->max_size) {
  ht->p.max_size = rounddown_pow_of_two(params->max_size);
  if (ht->p.max_size < ht->max_elems / 2)
   ht->max_elems = ht->p.max_size * 2;
 }

 ht->p.min_size = max_t(u16, ht->p.min_size, HASH_MIN_SIZE);

 size = rounded_hashtable_size(&ht->p);

 ht->key_len = ht->p.key_len;
 if (!params->hashfn) {
  ht->p.hashfn = jhash;

  if (!(ht->key_len & (sizeof(u32) - 1))) {
   ht->key_len /= sizeof(u32);
   ht->p.hashfn = rhashtable_jhash2;
  }
 }






 tbl = bucket_table_alloc(ht, size, GFP_KERNEL);
 if (unlikely(tbl == ((void*)0))) {
  size = max_t(u16, ht->p.min_size, HASH_MIN_SIZE);
  tbl = bucket_table_alloc(ht, size, GFP_KERNEL | __GFP_NOFAIL);
 }

 atomic_set(&ht->nelems, 0);

 RCU_INIT_POINTER(ht->tbl, tbl);

 INIT_WORK(&ht->run_work, rht_deferred_worker);

 return 0;
}
