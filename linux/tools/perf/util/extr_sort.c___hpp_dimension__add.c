
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;
struct perf_hpp_fmt {int dummy; } ;
struct hpp_dimension {int taken; } ;


 struct perf_hpp_fmt* __hpp_dimension__alloc_hpp (struct hpp_dimension*,int) ;
 int perf_hpp_list__register_sort_field (struct perf_hpp_list*,struct perf_hpp_fmt*) ;

__attribute__((used)) static int __hpp_dimension__add(struct hpp_dimension *hd,
    struct perf_hpp_list *list,
    int level)
{
 struct perf_hpp_fmt *fmt;

 if (hd->taken)
  return 0;

 fmt = __hpp_dimension__alloc_hpp(hd, level);
 if (!fmt)
  return -1;

 hd->taken = 1;
 perf_hpp_list__register_sort_field(list, fmt);
 return 0;
}
