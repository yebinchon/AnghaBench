
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int node_delete; int node_new; int node_cmp; } ;
struct runtime_stat {struct rblist value_list; } ;


 int rblist__init (struct rblist*) ;
 int saved_value_cmp ;
 int saved_value_delete ;
 int saved_value_new ;

void runtime_stat__init(struct runtime_stat *st)
{
 struct rblist *rblist = &st->value_list;

 rblist__init(rblist);
 rblist->node_cmp = saved_value_cmp;
 rblist->node_new = saved_value_new;
 rblist->node_delete = saved_value_delete;
}
