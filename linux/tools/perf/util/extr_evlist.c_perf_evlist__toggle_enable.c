
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {scalar_t__ enabled; } ;


 int evlist__disable (struct evlist*) ;
 int evlist__enable (struct evlist*) ;
 int stub1 (struct evlist*) ;

void perf_evlist__toggle_enable(struct evlist *evlist)
{
 (evlist->enabled ? evlist__disable : evlist__enable)(evlist);
}
