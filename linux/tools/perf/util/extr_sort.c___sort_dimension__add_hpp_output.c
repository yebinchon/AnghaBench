
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_dimension {int dummy; } ;
struct perf_hpp_list {int dummy; } ;
struct hpp_sort_entry {int hpp; } ;


 struct hpp_sort_entry* __sort_dimension__alloc_hpp (struct sort_dimension*,int ) ;
 int perf_hpp_list__column_register (struct perf_hpp_list*,int *) ;

__attribute__((used)) static int __sort_dimension__add_hpp_output(struct sort_dimension *sd,
         struct perf_hpp_list *list)
{
 struct hpp_sort_entry *hse = __sort_dimension__alloc_hpp(sd, 0);

 if (hse == ((void*)0))
  return -1;

 perf_hpp_list__column_register(list, &hse->hpp);
 return 0;
}
