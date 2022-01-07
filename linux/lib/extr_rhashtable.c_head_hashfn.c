
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rhashtable {int p; } ;
struct rhash_head {int dummy; } ;
struct bucket_table {int dummy; } ;


 int rht_head_hashfn (struct rhashtable*,struct bucket_table const*,struct rhash_head const*,int ) ;

__attribute__((used)) static u32 head_hashfn(struct rhashtable *ht,
         const struct bucket_table *tbl,
         const struct rhash_head *he)
{
 return rht_head_hashfn(ht, tbl, he, ht->p);
}
