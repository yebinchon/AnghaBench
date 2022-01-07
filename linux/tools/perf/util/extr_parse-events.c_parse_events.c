
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_events_state {scalar_t__ nr_groups; int list; struct evlist* evlist; struct parse_events_error* error; int idx; } ;
struct parse_events_error {int dummy; } ;
struct evsel {int cmdline_group_boundary; } ;
struct TYPE_2__ {int nr_entries; } ;
struct evlist {int nr_groups; TYPE_1__ core; } ;


 int LIST_HEAD_INIT (int ) ;
 int PE_START_EVENTS ;
 int WARN_ONCE (int,char*) ;
 struct evsel* evlist__last (struct evlist*) ;
 scalar_t__ list_empty (int *) ;
 int parse_events__scanner (char const*,struct parse_events_state*,int ) ;
 int perf_evlist__splice_list_tail (struct evlist*,int *) ;
 int perf_pmu__parse_cleanup () ;

int parse_events(struct evlist *evlist, const char *str,
   struct parse_events_error *err)
{
 struct parse_events_state parse_state = {
  .list = LIST_HEAD_INIT(parse_state.list),
  .idx = evlist->core.nr_entries,
  .error = err,
  .evlist = evlist,
 };
 int ret;

 ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
 perf_pmu__parse_cleanup();
 if (!ret) {
  struct evsel *last;

  if (list_empty(&parse_state.list)) {
   WARN_ONCE(1, "WARNING: event parser found nothing\n");
   return -1;
  }

  perf_evlist__splice_list_tail(evlist, &parse_state.list);
  evlist->nr_groups += parse_state.nr_groups;
  last = evlist__last(evlist);
  last->cmdline_group_boundary = 1;

  return 0;
 }






 return ret;
}
