
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dso; } ;
struct c2c_fmt {int fmt; struct c2c_dimension* dim; } ;
struct c2c_dimension {int dummy; } ;


 struct c2c_dimension dim_dso ;
 struct c2c_fmt* get_format (char*) ;
 int perf_hpp_list__register_sort_field (struct perf_hpp_list*,int *) ;
 int reset_dimensions () ;
 int sort_dimension__add (struct perf_hpp_list*,char*,int *,int ) ;

__attribute__((used)) static int c2c_hists__init_sort(struct perf_hpp_list *hpp_list, char *name)
{
 struct c2c_fmt *c2c_fmt = get_format(name);
 struct c2c_dimension *dim;

 if (!c2c_fmt) {
  reset_dimensions();
  return sort_dimension__add(hpp_list, name, ((void*)0), 0);
 }

 dim = c2c_fmt->dim;
 if (dim == &dim_dso)
  hpp_list->dso = 1;

 perf_hpp_list__register_sort_field(hpp_list, &c2c_fmt->fmt);
 return 0;
}
