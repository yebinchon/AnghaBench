
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_progress {int dummy; } ;
struct evsel {int dummy; } ;
typedef int hists__resort_cb_t ;
struct TYPE_2__ {int use_callchain; int show_branchflag_count; int show_ref_callgraph; } ;


 int evsel__has_callchain (struct evsel*) ;
 int evsel__hists (struct evsel*) ;
 int output_resort (int ,struct ui_progress*,int,int ,void*) ;
 TYPE_1__ symbol_conf ;

void perf_evsel__output_resort_cb(struct evsel *evsel, struct ui_progress *prog,
      hists__resort_cb_t cb, void *cb_arg)
{
 bool use_callchain;

 if (evsel && symbol_conf.use_callchain && !symbol_conf.show_ref_callgraph)
  use_callchain = evsel__has_callchain(evsel);
 else
  use_callchain = symbol_conf.use_callchain;

 use_callchain |= symbol_conf.show_branchflag_count;

 output_resort(evsel__hists(evsel), prog, use_callchain, cb, cb_arg);
}
