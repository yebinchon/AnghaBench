
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct bucket_table {int future_tbl; } ;


 int EEXIST ;
 int * cmpxchg (struct bucket_table**,int *,struct bucket_table*) ;

__attribute__((used)) static int rhashtable_rehash_attach(struct rhashtable *ht,
        struct bucket_table *old_tbl,
        struct bucket_table *new_tbl)
{






 if (cmpxchg((struct bucket_table **)&old_tbl->future_tbl, ((void*)0),
      new_tbl) != ((void*)0))
  return -EEXIST;

 return 0;
}
