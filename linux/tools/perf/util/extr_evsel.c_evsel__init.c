
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int sample_type; } ;
struct evsel {int idx; int tracking; char* unit; double scale; int bpf_fd; int cmdline_group_boundary; int collect_stat; int * pmu_name; int * metric_events; int * metric_name; int * metric_expr; int sample_size; int config_terms; int * bpf_obj; int * evlist; int max_events; struct evsel* leader; int core; } ;
struct TYPE_2__ {int (* init ) (struct evsel*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int ULONG_MAX ;
 int __perf_evsel__sample_size (int ) ;
 int perf_evsel__calc_id_pos (struct evsel*) ;
 int perf_evsel__init (int *,struct perf_event_attr*) ;
 TYPE_1__ perf_evsel__object ;
 int stub1 (struct evsel*) ;

void evsel__init(struct evsel *evsel,
   struct perf_event_attr *attr, int idx)
{
 perf_evsel__init(&evsel->core, attr);
 evsel->idx = idx;
 evsel->tracking = !idx;
 evsel->leader = evsel;
 evsel->unit = "";
 evsel->scale = 1.0;
 evsel->max_events = ULONG_MAX;
 evsel->evlist = ((void*)0);
 evsel->bpf_obj = ((void*)0);
 evsel->bpf_fd = -1;
 INIT_LIST_HEAD(&evsel->config_terms);
 perf_evsel__object.init(evsel);
 evsel->sample_size = __perf_evsel__sample_size(attr->sample_type);
 perf_evsel__calc_id_pos(evsel);
 evsel->cmdline_group_boundary = 0;
 evsel->metric_expr = ((void*)0);
 evsel->metric_name = ((void*)0);
 evsel->metric_events = ((void*)0);
 evsel->collect_stat = 0;
 evsel->pmu_name = ((void*)0);
}
