
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int fields; } ;
struct perf_hpp_fmt {int list; } ;


 int list_add_tail (int *,int *) ;

void perf_hpp_list__column_register(struct perf_hpp_list *list,
        struct perf_hpp_fmt *format)
{
 list_add_tail(&format->list, &list->fields);
}
