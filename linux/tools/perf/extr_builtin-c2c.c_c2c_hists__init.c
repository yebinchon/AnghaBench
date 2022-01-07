
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr_header_lines; } ;
struct c2c_hists {TYPE_1__ list; int hists; } ;


 int __hists__init (int *,TYPE_1__*) ;
 int hpp_list__parse (TYPE_1__*,int *,char const*) ;
 int perf_hpp_list__init (TYPE_1__*) ;

__attribute__((used)) static int c2c_hists__init(struct c2c_hists *hists,
      const char *sort,
      int nr_header_lines)
{
 __hists__init(&hists->hists, &hists->list);






 perf_hpp_list__init(&hists->list);


 hists->list.nr_header_lines = nr_header_lines;

 return hpp_list__parse(&hists->list, ((void*)0), sort);
}
