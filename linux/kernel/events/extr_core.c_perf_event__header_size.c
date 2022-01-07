
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sample_type; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* group_leader; } ;
struct TYPE_3__ {int nr_siblings; } ;


 int __perf_event_header_size (struct perf_event*,int ) ;
 int __perf_event_read_size (struct perf_event*,int ) ;

__attribute__((used)) static void perf_event__header_size(struct perf_event *event)
{
 __perf_event_read_size(event,
          event->group_leader->nr_siblings);
 __perf_event_header_size(event, event->attr.sample_type);
}
