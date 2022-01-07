
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int cpu; } ;
struct perf_addr_filter {int entry; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cpu_to_node (int) ;
 struct perf_addr_filter* kzalloc_node (int,int ,int) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static struct perf_addr_filter *
perf_addr_filter_new(struct perf_event *event, struct list_head *filters)
{
 int node = cpu_to_node(event->cpu == -1 ? 0 : event->cpu);
 struct perf_addr_filter *filter;

 filter = kzalloc_node(sizeof(*filter), GFP_KERNEL, node);
 if (!filter)
  return ((void*)0);

 INIT_LIST_HEAD(&filter->entry);
 list_add_tail(&filter->entry, filters);

 return filter;
}
