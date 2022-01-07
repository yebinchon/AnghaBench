
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_evsel {struct perf_event_attr attr; int node; } ;


 int INIT_LIST_HEAD (int *) ;

void perf_evsel__init(struct perf_evsel *evsel, struct perf_event_attr *attr)
{
 INIT_LIST_HEAD(&evsel->node);
 evsel->attr = *attr;
}
