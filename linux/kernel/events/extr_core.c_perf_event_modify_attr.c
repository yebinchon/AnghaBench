
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int type; } ;
struct TYPE_2__ {int type; } ;
struct perf_event {TYPE_1__ attr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;

 int perf_event_modify_breakpoint (struct perf_event*,struct perf_event_attr*) ;

__attribute__((used)) static int perf_event_modify_attr(struct perf_event *event,
      struct perf_event_attr *attr)
{
 if (event->attr.type != attr->type)
  return -EINVAL;

 switch (event->attr.type) {
 case 128:
  return perf_event_modify_breakpoint(event, attr);
 default:

  return -EOPNOTSUPP;
 }
}
