
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int lost; } ;
struct TYPE_7__ {int lost; } ;
struct TYPE_6__ {int type; int misc; } ;
union perf_event {TYPE_4__ aux; TYPE_3__ lost_samples; TYPE_2__ lost; TYPE_1__ header; } ;
typedef int u64 ;
struct perf_tool {int (* mmap ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* mmap2 ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* comm ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* namespaces ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* fork ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* exit ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* lost ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* lost_samples ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* read ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct evsel*,struct machine*) ;int (* throttle ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* unthrottle ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* aux ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* itrace_start ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* context_switch ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* ksymbol ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;int (* bpf ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;} ;
struct perf_sample {int id; } ;
struct machines {int dummy; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;
struct TYPE_10__ {int total_aux_lost; int total_aux_partial; int nr_unknown_events; int total_lost_samples; int total_lost; int nr_proc_map_timeout; int nr_unprocessable_samples; int nr_unknown_id; } ;
struct evlist {TYPE_5__ stats; } ;


 int PERF_AUX_FLAG_PARTIAL ;
 int PERF_AUX_FLAG_TRUNCATED ;
 int PERF_RECORD_MISC_PROC_MAP_PARSE_TIMEOUT ;
 int dump_event (struct evlist*,union perf_event*,int ,struct perf_sample*) ;
 int dump_read (struct evsel*,union perf_event*) ;
 int dump_sample (struct evsel*,union perf_event*,struct perf_sample*) ;
 struct machine* machines__find_for_cpumode (struct machines*,union perf_event*,struct perf_sample*) ;
 int perf_event__process_aux (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int perf_event__process_lost (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int perf_event__process_lost_samples (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int perf_evlist__deliver_sample (struct evlist*,struct perf_tool*,union perf_event*,struct perf_sample*,struct evsel*,struct machine*) ;
 struct evsel* perf_evlist__id2evsel (struct evlist*,int ) ;
 int stub1 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub10 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub11 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub12 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub13 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub14 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub15 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub16 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub2 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub3 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub4 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub5 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub6 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub7 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub8 (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int stub9 (struct perf_tool*,union perf_event*,struct perf_sample*,struct evsel*,struct machine*) ;

__attribute__((used)) static int machines__deliver_event(struct machines *machines,
       struct evlist *evlist,
       union perf_event *event,
       struct perf_sample *sample,
       struct perf_tool *tool, u64 file_offset)
{
 struct evsel *evsel;
 struct machine *machine;

 dump_event(evlist, event, file_offset, sample);

 evsel = perf_evlist__id2evsel(evlist, sample->id);

 machine = machines__find_for_cpumode(machines, event, sample);

 switch (event->header.type) {
 case 132:
  if (evsel == ((void*)0)) {
   ++evlist->stats.nr_unknown_id;
   return 0;
  }
  dump_sample(evsel, event, sample);
  if (machine == ((void*)0)) {
   ++evlist->stats.nr_unprocessable_samples;
   return 0;
  }
  return perf_evlist__deliver_sample(evlist, tool, event, sample, evsel, machine);
 case 136:
  return tool->mmap(tool, event, sample, machine);
 case 135:
  if (event->header.misc & PERF_RECORD_MISC_PROC_MAP_PARSE_TIMEOUT)
   ++evlist->stats.nr_proc_map_timeout;
  return tool->mmap2(tool, event, sample, machine);
 case 143:
  return tool->comm(tool, event, sample, machine);
 case 134:
  return tool->namespaces(tool, event, sample, machine);
 case 141:
  return tool->fork(tool, event, sample, machine);
 case 142:
  return tool->exit(tool, event, sample, machine);
 case 138:
  if (tool->lost == perf_event__process_lost)
   evlist->stats.total_lost += event->lost.lost;
  return tool->lost(tool, event, sample, machine);
 case 137:
  if (tool->lost_samples == perf_event__process_lost_samples)
   evlist->stats.total_lost_samples += event->lost_samples.lost;
  return tool->lost_samples(tool, event, sample, machine);
 case 133:
  dump_read(evsel, event);
  return tool->read(tool, event, sample, evsel, machine);
 case 129:
  return tool->throttle(tool, event, sample, machine);
 case 128:
  return tool->unthrottle(tool, event, sample, machine);
 case 145:
  if (tool->aux == perf_event__process_aux) {
   if (event->aux.flags & PERF_AUX_FLAG_TRUNCATED)
    evlist->stats.total_aux_lost += 1;
   if (event->aux.flags & PERF_AUX_FLAG_PARTIAL)
    evlist->stats.total_aux_partial += 1;
  }
  return tool->aux(tool, event, sample, machine);
 case 140:
  return tool->itrace_start(tool, event, sample, machine);
 case 131:
 case 130:
  return tool->context_switch(tool, event, sample, machine);
 case 139:
  return tool->ksymbol(tool, event, sample, machine);
 case 144:
  return tool->bpf(tool, event, sample, machine);
 default:
  ++evlist->stats.nr_unknown_events;
  return -1;
 }
}
