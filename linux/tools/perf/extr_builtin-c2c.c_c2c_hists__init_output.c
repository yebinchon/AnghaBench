
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;
struct c2c_fmt {int fmt; } ;


 struct c2c_fmt* get_format (char*) ;
 int output_field_add (struct perf_hpp_list*,char*) ;
 int perf_hpp_list__column_register (struct perf_hpp_list*,int *) ;
 int reset_dimensions () ;

__attribute__((used)) static int c2c_hists__init_output(struct perf_hpp_list *hpp_list, char *name)
{
 struct c2c_fmt *c2c_fmt = get_format(name);

 if (!c2c_fmt) {
  reset_dimensions();
  return output_field_add(hpp_list, name);
 }

 perf_hpp_list__column_register(hpp_list, &c2c_fmt->fmt);
 return 0;
}
