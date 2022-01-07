
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
union perf_event {TYPE_2__ header; } ;
struct perf_top {int tool; int guest_us_samples; int guest_kernel_samples; int hide_kernel_symbols; int kernel_samples; int hide_user_symbols; int us_samples; int samples; int evswitch; int drop_total; int drop; struct perf_session* session; struct evlist* evlist; } ;
struct machine {int dummy; } ;
struct TYPE_5__ {struct machine host; } ;
struct perf_session {TYPE_4__* evlist; TYPE_1__ machines; } ;
struct perf_sample {int cpumode; int pid; int id; } ;
struct ordered_events {struct perf_top* data; } ;
struct ordered_event {union perf_event* event; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;
struct TYPE_7__ {int nr_unknown_events; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;


 scalar_t__ PERF_RECORD_LOST ;
 scalar_t__ PERF_RECORD_LOST_SAMPLES ;
 scalar_t__ PERF_RECORD_MAX ;




 scalar_t__ PERF_RECORD_SAMPLE ;
 int assert (int ) ;
 int evsel__hists (struct evsel*) ;
 scalar_t__ evswitch__discard (int *,struct evsel*) ;
 int hists__inc_nr_events (int ,scalar_t__) ;
 int machine__process_event (struct machine*,union perf_event*,struct perf_sample*) ;
 int perf_event__process_sample (int *,union perf_event*,struct evsel*,struct perf_sample*,struct machine*) ;
 struct evsel* perf_evlist__id2evsel (TYPE_4__*,int ) ;
 int perf_evlist__parse_sample (struct evlist*,union perf_event*,struct perf_sample*) ;
 struct machine* perf_session__find_machine (struct perf_session*,int ) ;
 int perf_top__process_lost (struct perf_top*,union perf_event*,struct evsel*) ;
 int perf_top__process_lost_samples (struct perf_top*,union perf_event*,struct evsel*) ;
 int pr_err (char*,int) ;
 scalar_t__ should_drop (struct ordered_event*,struct perf_top*) ;

__attribute__((used)) static int deliver_event(struct ordered_events *qe,
    struct ordered_event *qevent)
{
 struct perf_top *top = qe->data;
 struct evlist *evlist = top->evlist;
 struct perf_session *session = top->session;
 union perf_event *event = qevent->event;
 struct perf_sample sample;
 struct evsel *evsel;
 struct machine *machine;
 int ret = -1;

 if (should_drop(qevent, top)) {
  top->drop++;
  top->drop_total++;
  return 0;
 }

 ret = perf_evlist__parse_sample(evlist, event, &sample);
 if (ret) {
  pr_err("Can't parse sample, err = %d\n", ret);
  goto next_event;
 }

 evsel = perf_evlist__id2evsel(session->evlist, sample.id);
 assert(evsel != ((void*)0));

 if (event->header.type == PERF_RECORD_SAMPLE) {
  if (evswitch__discard(&top->evswitch, evsel))
   return 0;
  ++top->samples;
 }

 switch (sample.cpumode) {
 case 128:
  ++top->us_samples;
  if (top->hide_user_symbols)
   goto next_event;
  machine = &session->machines.host;
  break;
 case 129:
  ++top->kernel_samples;
  if (top->hide_kernel_symbols)
   goto next_event;
  machine = &session->machines.host;
  break;
 case 131:
  ++top->guest_kernel_samples;
  machine = perf_session__find_machine(session,
           sample.pid);
  break;
 case 130:
  ++top->guest_us_samples;




  goto next_event;
 default:
  if (event->header.type == PERF_RECORD_SAMPLE)
   goto next_event;
  machine = &session->machines.host;
  break;
 }

 if (event->header.type == PERF_RECORD_SAMPLE) {
  perf_event__process_sample(&top->tool, event, evsel,
        &sample, machine);
 } else if (event->header.type == PERF_RECORD_LOST) {
  perf_top__process_lost(top, event, evsel);
 } else if (event->header.type == PERF_RECORD_LOST_SAMPLES) {
  perf_top__process_lost_samples(top, event, evsel);
 } else if (event->header.type < PERF_RECORD_MAX) {
  hists__inc_nr_events(evsel__hists(evsel), event->header.type);
  machine__process_event(machine, event, &sample);
 } else
  ++session->evlist->stats.nr_unknown_events;

 ret = 0;
next_event:
 return ret;
}
