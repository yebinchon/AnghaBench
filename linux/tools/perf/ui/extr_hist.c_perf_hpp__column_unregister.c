
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int list; } ;


 int list_del_init (int *) ;

void perf_hpp__column_unregister(struct perf_hpp_fmt *format)
{
 list_del_init(&format->list);
}
