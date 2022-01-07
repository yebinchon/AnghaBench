
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int value_list; } ;


 int rblist__exit (int *) ;

void runtime_stat__exit(struct runtime_stat *st)
{
 rblist__exit(&st->value_list);
}
