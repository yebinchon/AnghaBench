
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_progress {int dummy; } ;
struct evsel {int dummy; } ;


 void perf_evsel__output_resort_cb (struct evsel*,struct ui_progress*,int *,int *) ;

void perf_evsel__output_resort(struct evsel *evsel, struct ui_progress *prog)
{
 return perf_evsel__output_resort_cb(evsel, prog, ((void*)0), ((void*)0));
}
