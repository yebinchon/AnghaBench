
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int evlist; } ;
struct evsel_str_handler {int * handler; int name; } ;
struct evsel {int * handler; } ;


 int EEXIST ;
 struct evsel* perf_evlist__find_tracepoint_by_name (int ,int ) ;

int __perf_session__set_tracepoints_handlers(struct perf_session *session,
          const struct evsel_str_handler *assocs,
          size_t nr_assocs)
{
 struct evsel *evsel;
 size_t i;
 int err;

 for (i = 0; i < nr_assocs; i++) {




  evsel = perf_evlist__find_tracepoint_by_name(session->evlist, assocs[i].name);
  if (evsel == ((void*)0))
   continue;

  err = -EEXIST;
  if (evsel->handler != ((void*)0))
   goto out;
  evsel->handler = assocs[i].handler;
 }

 err = 0;
out:
 return err;
}
