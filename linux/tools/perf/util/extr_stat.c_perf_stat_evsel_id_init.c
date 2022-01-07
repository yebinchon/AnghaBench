
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_evsel {int id; } ;
struct evsel {struct perf_stat_evsel* stats; } ;


 int PERF_STAT_EVSEL_ID__MAX ;
 int * id_str ;
 int perf_evsel__name (struct evsel*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void perf_stat_evsel_id_init(struct evsel *evsel)
{
 struct perf_stat_evsel *ps = evsel->stats;
 int i;



 for (i = 0; i < PERF_STAT_EVSEL_ID__MAX; i++) {
  if (!strcmp(perf_evsel__name(evsel), id_str[i])) {
   ps->id = i;
   break;
  }
 }
}
