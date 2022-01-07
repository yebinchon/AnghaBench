
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_2__ {size_t config; } ;
struct perf_event {int parent; TYPE_1__ attr; } ;


 int WARN_ON (int ) ;
 int * perf_swevent_enabled ;
 int static_key_slow_dec (int *) ;
 int swevent_hlist_put () ;

__attribute__((used)) static void sw_perf_event_destroy(struct perf_event *event)
{
 u64 event_id = event->attr.config;

 WARN_ON(event->parent);

 static_key_slow_dec(&perf_swevent_enabled[event_id]);
 swevent_hlist_put();
}
