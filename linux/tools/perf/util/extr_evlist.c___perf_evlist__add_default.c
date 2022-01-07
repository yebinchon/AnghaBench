
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 int ENOMEM ;
 int evlist__add (struct evlist*,struct evsel*) ;
 struct evsel* perf_evsel__new_cycles (int) ;

int __perf_evlist__add_default(struct evlist *evlist, bool precise)
{
 struct evsel *evsel = perf_evsel__new_cycles(precise);

 if (evsel == ((void*)0))
  return -ENOMEM;

 evlist__add(evlist, evsel);
 return 0;
}
