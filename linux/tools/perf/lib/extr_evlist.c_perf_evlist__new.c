
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int dummy; } ;


 int perf_evlist__init (struct perf_evlist*) ;
 struct perf_evlist* zalloc (int) ;

struct perf_evlist *perf_evlist__new(void)
{
 struct perf_evlist *evlist = zalloc(sizeof(*evlist));

 if (evlist != ((void*)0))
  perf_evlist__init(evlist);

 return evlist;
}
