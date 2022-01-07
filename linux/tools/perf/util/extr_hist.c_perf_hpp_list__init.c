
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int sorts; int fields; } ;


 int INIT_LIST_HEAD (int *) ;

void perf_hpp_list__init(struct perf_hpp_list *list)
{
 INIT_LIST_HEAD(&list->fields);
 INIT_LIST_HEAD(&list->sorts);
}
