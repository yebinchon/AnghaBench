
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int (* free ) (struct perf_hpp_fmt*) ;int sort_list; int list; } ;


 int BUG_ON (int) ;
 int list_empty (int *) ;
 int stub1 (struct perf_hpp_fmt*) ;

__attribute__((used)) static void fmt_free(struct perf_hpp_fmt *fmt)
{




 BUG_ON(!list_empty(&fmt->list));
 BUG_ON(!list_empty(&fmt->sort_list));

 if (fmt->free)
  fmt->free(fmt);
}
