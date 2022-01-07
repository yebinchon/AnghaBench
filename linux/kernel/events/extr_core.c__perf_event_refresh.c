
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inherit; } ;
struct perf_event {int event_limit; TYPE_1__ attr; } ;


 int EINVAL ;
 int _perf_event_enable (struct perf_event*) ;
 int atomic_add (int,int *) ;
 int is_sampling_event (struct perf_event*) ;

__attribute__((used)) static int _perf_event_refresh(struct perf_event *event, int refresh)
{



 if (event->attr.inherit || !is_sampling_event(event))
  return -EINVAL;

 atomic_add(refresh, &event->event_limit);
 _perf_event_enable(event);

 return 0;
}
