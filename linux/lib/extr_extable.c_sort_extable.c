
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 int cmp_ex_sort ;
 int sort (struct exception_table_entry*,int,int,int ,int ) ;
 int swap_ex ;

void sort_extable(struct exception_table_entry *start,
    struct exception_table_entry *finish)
{
 sort(start, finish - start, sizeof(struct exception_table_entry),
      cmp_ex_sort, swap_ex);
}
