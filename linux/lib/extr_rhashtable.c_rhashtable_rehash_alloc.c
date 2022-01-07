
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct bucket_table {int dummy; } ;


 int ASSERT_RHT_MUTEX (struct rhashtable*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct bucket_table* bucket_table_alloc (struct rhashtable*,unsigned int,int ) ;
 int bucket_table_free (struct bucket_table*) ;
 int rhashtable_rehash_attach (struct rhashtable*,struct bucket_table*,struct bucket_table*) ;

__attribute__((used)) static int rhashtable_rehash_alloc(struct rhashtable *ht,
       struct bucket_table *old_tbl,
       unsigned int size)
{
 struct bucket_table *new_tbl;
 int err;

 ASSERT_RHT_MUTEX(ht);

 new_tbl = bucket_table_alloc(ht, size, GFP_KERNEL);
 if (new_tbl == ((void*)0))
  return -ENOMEM;

 err = rhashtable_rehash_attach(ht, old_tbl, new_tbl);
 if (err)
  bucket_table_free(new_tbl);

 return err;
}
