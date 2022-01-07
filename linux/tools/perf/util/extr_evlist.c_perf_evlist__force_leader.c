
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int forced_leader; } ;
struct evlist {int nr_groups; } ;


 struct evsel* evlist__first (struct evlist*) ;
 int perf_evlist__set_leader (struct evlist*) ;

void perf_evlist__force_leader(struct evlist *evlist)
{
 if (!evlist->nr_groups) {
  struct evsel *leader = evlist__first(evlist);

  perf_evlist__set_leader(evlist);
  leader->forced_leader = 1;
 }
}
