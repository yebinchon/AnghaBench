
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2c_hists {int list; } ;


 int hpp_list__parse (int *,char const*,char const*) ;
 int perf_hpp__reset_output_field (int *) ;

__attribute__((used)) static int c2c_hists__reinit(struct c2c_hists *c2c_hists,
        const char *output,
        const char *sort)
{
 perf_hpp__reset_output_field(&c2c_hists->list);
 return hpp_list__parse(&c2c_hists->list, output, sort);
}
