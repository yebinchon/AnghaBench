
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int PERF_HPP__MAX_INDEX ;
 int __hpp_dimension__add_output (int *,int *) ;
 int * hpp_sort_dimensions ;
 int perf_hpp_list ;

int hpp_dimension__add_output(unsigned col)
{
 BUG_ON(col >= PERF_HPP__MAX_INDEX);
 return __hpp_dimension__add_output(&perf_hpp_list, &hpp_sort_dimensions[col]);
}
