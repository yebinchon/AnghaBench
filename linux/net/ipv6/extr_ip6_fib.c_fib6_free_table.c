
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_table {int tb6_peers; } ;


 int inetpeer_invalidate_tree (int *) ;
 int kfree (struct fib6_table*) ;

__attribute__((used)) static void fib6_free_table(struct fib6_table *table)
{
 inetpeer_invalidate_tree(&table->tb6_peers);
 kfree(table);
}
