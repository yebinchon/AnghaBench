
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comm; } ;
struct perf_event {TYPE_1__ attr; } ;



__attribute__((used)) static int perf_event_comm_match(struct perf_event *event)
{
 return event->attr.comm;
}
