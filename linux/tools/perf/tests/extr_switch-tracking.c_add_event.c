
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {scalar_t__ time; } ;
struct list_head {int dummy; } ;
struct evlist {int dummy; } ;
struct event_node {scalar_t__ event_time; int list; union perf_event* event; } ;


 int list_add (int *,struct list_head*) ;
 struct event_node* malloc (int) ;
 scalar_t__ perf_evlist__parse_sample (struct evlist*,union perf_event*,struct perf_sample*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int add_event(struct evlist *evlist, struct list_head *events,
       union perf_event *event)
{
 struct perf_sample sample;
 struct event_node *node;

 node = malloc(sizeof(struct event_node));
 if (!node) {
  pr_debug("malloc failed\n");
  return -1;
 }
 node->event = event;
 list_add(&node->list, events);

 if (perf_evlist__parse_sample(evlist, event, &sample)) {
  pr_debug("perf_evlist__parse_sample failed\n");
  return -1;
 }

 if (!sample.time) {
  pr_debug("event with no time\n");
  return -1;
 }

 node->event_time = sample.time;

 return 0;
}
