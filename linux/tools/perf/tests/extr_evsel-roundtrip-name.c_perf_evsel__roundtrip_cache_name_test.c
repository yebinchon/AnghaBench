
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int idx; } ;
struct evlist {int dummy; } ;
typedef int name ;


 int ENOMEM ;
 int PERF_COUNT_HW_CACHE_MAX ;
 int PERF_COUNT_HW_CACHE_OP_MAX ;
 int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 int __perf_evsel__hw_cache_type_op_res_name (int,int,int,char*,int) ;
 int evlist__delete (struct evlist*) ;
 struct evsel* evlist__first (struct evlist*) ;
 struct evlist* evlist__new () ;
 int parse_events (struct evlist*,char*,int *) ;
 int perf_evsel__is_cache_op_valid (int,int) ;
 int perf_evsel__name (struct evsel*) ;
 struct evsel* perf_evsel__next (struct evsel*) ;
 int pr_debug (char*,int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int perf_evsel__roundtrip_cache_name_test(void)
{
 char name[128];
 int type, op, err = 0, ret = 0, i, idx;
 struct evsel *evsel;
 struct evlist *evlist = evlist__new();

        if (evlist == ((void*)0))
                return -ENOMEM;

 for (type = 0; type < PERF_COUNT_HW_CACHE_MAX; type++) {
  for (op = 0; op < PERF_COUNT_HW_CACHE_OP_MAX; op++) {

   if (!perf_evsel__is_cache_op_valid(type, op))
    continue;

   for (i = 0; i < PERF_COUNT_HW_CACHE_RESULT_MAX; i++) {
    __perf_evsel__hw_cache_type_op_res_name(type, op, i,
         name, sizeof(name));
    err = parse_events(evlist, name, ((void*)0));
    if (err)
     ret = err;
   }
  }
 }

 idx = 0;
 evsel = evlist__first(evlist);

 for (type = 0; type < PERF_COUNT_HW_CACHE_MAX; type++) {
  for (op = 0; op < PERF_COUNT_HW_CACHE_OP_MAX; op++) {

   if (!perf_evsel__is_cache_op_valid(type, op))
    continue;

   for (i = 0; i < PERF_COUNT_HW_CACHE_RESULT_MAX; i++) {
    __perf_evsel__hw_cache_type_op_res_name(type, op, i,
         name, sizeof(name));
    if (evsel->idx != idx)
     continue;

    ++idx;

    if (strcmp(perf_evsel__name(evsel), name)) {
     pr_debug("%s != %s\n", perf_evsel__name(evsel), name);
     ret = -1;
    }

    evsel = perf_evsel__next(evsel);
   }
  }
 }

 evlist__delete(evlist);
 return ret;
}
