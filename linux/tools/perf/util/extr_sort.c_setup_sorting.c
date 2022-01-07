
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 scalar_t__ SORT_MODE__DIFF ;
 int __setup_output_field () ;
 int __setup_sorting (struct evlist*) ;
 scalar_t__ default_parent_pattern ;
 scalar_t__ parent_pattern ;
 int perf_hpp__append_sort_keys (int *) ;
 int perf_hpp__init () ;
 scalar_t__ perf_hpp__setup_hists_formats (int *,struct evlist*) ;
 int perf_hpp__setup_output_field (int *) ;
 int perf_hpp_list ;
 int reset_dimensions () ;
 scalar_t__ sort__mode ;
 int sort_dimension__add (int *,char*,struct evlist*,int) ;

int setup_sorting(struct evlist *evlist)
{
 int err;

 err = __setup_sorting(evlist);
 if (err < 0)
  return err;

 if (parent_pattern != default_parent_pattern) {
  err = sort_dimension__add(&perf_hpp_list, "parent", evlist, -1);
  if (err < 0)
   return err;
 }

 reset_dimensions();




 if (sort__mode != SORT_MODE__DIFF)
  perf_hpp__init();

 err = __setup_output_field();
 if (err < 0)
  return err;


 perf_hpp__setup_output_field(&perf_hpp_list);

 perf_hpp__append_sort_keys(&perf_hpp_list);


 if (perf_hpp__setup_hists_formats(&perf_hpp_list, evlist) < 0)
  return -1;

 return 0;
}
