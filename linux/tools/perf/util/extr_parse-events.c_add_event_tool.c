
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int config; int type; } ;
struct list_head {int dummy; } ;
struct evsel {int tool_event; int unit; } ;
typedef enum perf_tool_event { ____Placeholder_perf_tool_event } perf_tool_event ;


 int ENOMEM ;
 int PERF_COUNT_SW_DUMMY ;
 int PERF_TOOL_DURATION_TIME ;
 int PERF_TYPE_SOFTWARE ;
 struct evsel* __add_event (struct list_head*,int*,struct perf_event_attr*,int *,int *,int *,int,char*) ;
 int strdup (char*) ;

__attribute__((used)) static int add_event_tool(struct list_head *list, int *idx,
     enum perf_tool_event tool_event)
{
 struct evsel *evsel;
 struct perf_event_attr attr = {
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_DUMMY,
 };

 evsel = __add_event(list, idx, &attr, ((void*)0), ((void*)0), ((void*)0), 0, "0");
 if (!evsel)
  return -ENOMEM;
 evsel->tool_event = tool_event;
 if (tool_event == PERF_TOOL_DURATION_TIME)
  evsel->unit = strdup("ns");
 return 0;
}
