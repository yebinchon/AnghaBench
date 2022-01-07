
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;



__attribute__((used)) static void perf_swevent_start(struct perf_event *event, int flags)
{
 event->hw.state = 0;
}
