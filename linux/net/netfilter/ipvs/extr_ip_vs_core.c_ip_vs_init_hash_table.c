
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;

void ip_vs_init_hash_table(struct list_head *table, int rows)
{
 while (--rows >= 0)
  INIT_LIST_HEAD(&table[rows]);
}
