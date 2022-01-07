
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhash_lock_head {int dummy; } ;
struct bucket_table {int dummy; } ;


 int INIT_RHT_NULLS_HEAD (struct rhash_lock_head*) ;
 scalar_t__ __rht_bucket_nested (struct bucket_table const*,unsigned int) ;

struct rhash_lock_head **rht_bucket_nested(const struct bucket_table *tbl,
        unsigned int hash)
{
 static struct rhash_lock_head *rhnull;

 if (!rhnull)
  INIT_RHT_NULLS_HEAD(rhnull);
 return __rht_bucket_nested(tbl, hash) ?: &rhnull;
}
