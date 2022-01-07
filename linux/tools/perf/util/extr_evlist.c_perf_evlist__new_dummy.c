
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int evlist__delete (struct evlist*) ;
 struct evlist* evlist__new () ;
 scalar_t__ perf_evlist__add_dummy (struct evlist*) ;

struct evlist *perf_evlist__new_dummy(void)
{
 struct evlist *evlist = evlist__new();

 if (evlist && perf_evlist__add_dummy(evlist)) {
  evlist__delete(evlist);
  evlist = ((void*)0);
 }

 return evlist;
}
