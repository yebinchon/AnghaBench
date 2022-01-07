
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr const attr; } ;


 int EINVAL ;
 struct perf_event_attr const* ERR_PTR (int ) ;

const struct perf_event_attr *perf_event_attrs(struct perf_event *event)
{
 if (!event)
  return ERR_PTR(-EINVAL);

 return &event->attr;
}
