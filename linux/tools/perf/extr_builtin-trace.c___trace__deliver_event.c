
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct trace {int output; struct evlist* evlist; } ;
struct perf_sample {int dummy; } ;
struct evlist {int dummy; } ;


 int fprintf (int ,char*,int) ;
 int perf_evlist__parse_sample (struct evlist*,union perf_event*,struct perf_sample*) ;
 int trace__handle_event (struct trace*,union perf_event*,struct perf_sample*) ;

__attribute__((used)) static int __trace__deliver_event(struct trace *trace, union perf_event *event)
{
 struct evlist *evlist = trace->evlist;
 struct perf_sample sample;
 int err;

 err = perf_evlist__parse_sample(evlist, event, &sample);
 if (err)
  fprintf(trace->output, "Can't parse sample, err = %d, skipping...\n", err);
 else
  trace__handle_event(trace, event, &sample);

 return 0;
}
