
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp_list {int dummy; } ;
struct TYPE_2__ {int list; } ;


 int PARSE_LIST (char*,int ) ;
 int c2c_hists__init_output ;
 int c2c_hists__init_sort ;
 int free (char*) ;
 TYPE_1__* hists ;
 int perf_hpp__append_sort_keys (int *) ;
 int perf_hpp__setup_output_field (struct perf_hpp_list*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int hpp_list__parse(struct perf_hpp_list *hpp_list,
      const char *output_,
      const char *sort_)
{
 char *output = output_ ? strdup(output_) : ((void*)0);
 char *sort = sort_ ? strdup(sort_) : ((void*)0);
 int ret;

 PARSE_LIST(output, c2c_hists__init_output);
 PARSE_LIST(sort, c2c_hists__init_sort);


 perf_hpp__setup_output_field(hpp_list);
 free(output);
 free(sort);
 return ret;
}
