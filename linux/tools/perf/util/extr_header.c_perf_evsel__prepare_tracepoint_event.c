
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tep_handle {int dummy; } ;
struct tep_event {char* system; char* name; } ;
struct TYPE_3__ {scalar_t__ config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {struct tep_event* tp_format; int * name; TYPE_2__ core; } ;
typedef int bf ;


 int pr_debug (char*,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strdup (char*) ;
 struct tep_event* tep_find_event (struct tep_handle*,scalar_t__) ;

__attribute__((used)) static int perf_evsel__prepare_tracepoint_event(struct evsel *evsel,
      struct tep_handle *pevent)
{
 struct tep_event *event;
 char bf[128];


 if (evsel->tp_format)
  return 0;

 if (pevent == ((void*)0)) {
  pr_debug("broken or missing trace data\n");
  return -1;
 }

 event = tep_find_event(pevent, evsel->core.attr.config);
 if (event == ((void*)0)) {
  pr_debug("cannot find event format for %d\n", (int)evsel->core.attr.config);
  return -1;
 }

 if (!evsel->name) {
  snprintf(bf, sizeof(bf), "%s:%s", event->system, event->name);
  evsel->name = strdup(bf);
  if (evsel->name == ((void*)0))
   return -1;
 }

 evsel->tp_format = event;
 return 0;
}
