
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_state {int idx; } ;
struct list_head {int dummy; } ;
typedef enum perf_tool_event { ____Placeholder_perf_tool_event } perf_tool_event ;


 int add_event_tool (struct list_head*,int *,int) ;

int parse_events_add_tool(struct parse_events_state *parse_state,
     struct list_head *list,
     enum perf_tool_event tool_event)
{
 return add_event_tool(list, &parse_state->idx, tool_event);
}
