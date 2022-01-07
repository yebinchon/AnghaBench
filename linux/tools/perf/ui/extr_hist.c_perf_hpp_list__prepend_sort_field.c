
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int sorts; } ;
struct perf_hpp_fmt {int sort_list; } ;


 int list_add (int *,int *) ;

void perf_hpp_list__prepend_sort_field(struct perf_hpp_list *list,
           struct perf_hpp_fmt *format)
{
 list_add(&format->sort_list, &list->sorts);
}
