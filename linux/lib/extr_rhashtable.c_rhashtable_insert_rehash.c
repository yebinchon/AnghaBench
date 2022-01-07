
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int run_work; int tbl; } ;
struct bucket_table {unsigned int size; int future_tbl; } ;


 int EBUSY ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 struct bucket_table* bucket_table_alloc (struct rhashtable*,unsigned int,int) ;
 int bucket_table_free (struct bucket_table*) ;
 scalar_t__ likely (int ) ;
 int rcu_access_pointer (int ) ;
 int rhashtable_rehash_attach (struct rhashtable*,struct bucket_table*,struct bucket_table*) ;
 struct bucket_table* rht_dereference_rcu (int ,struct rhashtable*) ;
 scalar_t__ rht_grow_above_75 (struct rhashtable*,struct bucket_table*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int rhashtable_insert_rehash(struct rhashtable *ht,
        struct bucket_table *tbl)
{
 struct bucket_table *old_tbl;
 struct bucket_table *new_tbl;
 unsigned int size;
 int err;

 old_tbl = rht_dereference_rcu(ht->tbl, ht);

 size = tbl->size;

 err = -EBUSY;

 if (rht_grow_above_75(ht, tbl))
  size *= 2;

 else if (old_tbl != tbl)
  goto fail;

 err = -ENOMEM;

 new_tbl = bucket_table_alloc(ht, size, GFP_ATOMIC | __GFP_NOWARN);
 if (new_tbl == ((void*)0))
  goto fail;

 err = rhashtable_rehash_attach(ht, tbl, new_tbl);
 if (err) {
  bucket_table_free(new_tbl);
  if (err == -EEXIST)
   err = 0;
 } else
  schedule_work(&ht->run_work);

 return err;

fail:

 if (likely(rcu_access_pointer(tbl->future_tbl)))
  return 0;


 if (err == -ENOMEM)
  schedule_work(&ht->run_work);

 return err;
}
