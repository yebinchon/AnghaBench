
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int node_new; int node_cmp; } ;


 int metric_event_cmp ;
 int metric_event_new ;
 int rblist__init (struct rblist*) ;

__attribute__((used)) static void metricgroup__rblist_init(struct rblist *metric_events)
{
 rblist__init(metric_events);
 metric_events->node_cmp = metric_event_cmp;
 metric_events->node_new = metric_event_new;
}
