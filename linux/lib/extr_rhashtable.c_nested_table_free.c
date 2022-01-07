
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nested_table {int table; } ;


 unsigned int PAGE_SHIFT ;
 unsigned int ilog2 (int) ;
 int kfree (union nested_table*) ;
 union nested_table* rcu_dereference_raw (int ) ;

__attribute__((used)) static void nested_table_free(union nested_table *ntbl, unsigned int size)
{
 const unsigned int shift = PAGE_SHIFT - ilog2(sizeof(void *));
 const unsigned int len = 1 << shift;
 unsigned int i;

 ntbl = rcu_dereference_raw(ntbl->table);
 if (!ntbl)
  return;

 if (size > len) {
  size >>= shift;
  for (i = 0; i < len; i++)
   nested_table_free(ntbl + i, size);
 }

 kfree(ntbl);
}
