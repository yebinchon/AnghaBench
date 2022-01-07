
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nested_table {int dummy; } nested_table ;
struct bucket_table {unsigned int size; unsigned int nest; int * buckets; } ;


 int kfree (union nested_table*) ;
 int nested_table_free (union nested_table*,unsigned int) ;
 scalar_t__ rcu_dereference_raw (int ) ;

__attribute__((used)) static void nested_bucket_table_free(const struct bucket_table *tbl)
{
 unsigned int size = tbl->size >> tbl->nest;
 unsigned int len = 1 << tbl->nest;
 union nested_table *ntbl;
 unsigned int i;

 ntbl = (union nested_table *)rcu_dereference_raw(tbl->buckets[0]);

 for (i = 0; i < len; i++)
  nested_table_free(ntbl + i, size);

 kfree(ntbl);
}
