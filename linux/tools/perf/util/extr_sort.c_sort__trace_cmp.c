
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {int * trace_output; int hists; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
typedef int int64_t ;


 scalar_t__ PERF_TYPE_TRACEPOINT ;
 void* get_trace_output (struct hist_entry*) ;
 struct evsel* hists_to_evsel (int ) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int64_t
sort__trace_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct evsel *evsel;

 evsel = hists_to_evsel(left->hists);
 if (evsel->core.attr.type != PERF_TYPE_TRACEPOINT)
  return 0;

 if (left->trace_output == ((void*)0))
  left->trace_output = get_trace_output(left);
 if (right->trace_output == ((void*)0))
  right->trace_output = get_trace_output(right);

 return strcmp(right->trace_output, left->trace_output);
}
