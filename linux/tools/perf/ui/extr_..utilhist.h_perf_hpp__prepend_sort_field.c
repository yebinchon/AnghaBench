
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;


 int perf_hpp_list ;
 int perf_hpp_list__prepend_sort_field (int *,struct perf_hpp_fmt*) ;

__attribute__((used)) static inline void perf_hpp__prepend_sort_field(struct perf_hpp_fmt *format)
{
 perf_hpp_list__prepend_sort_field(&perf_hpp_list, format);
}
