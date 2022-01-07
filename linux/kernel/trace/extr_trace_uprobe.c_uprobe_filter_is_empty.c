
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe_filter {int perf_events; int nr_systemwide; } ;


 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline bool uprobe_filter_is_empty(struct trace_uprobe_filter *filter)
{
 return !filter->nr_systemwide && list_empty(&filter->perf_events);
}
