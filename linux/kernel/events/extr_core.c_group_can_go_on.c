
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exclusive; } ;
struct perf_event {int group_caps; TYPE_1__ attr; } ;
struct perf_cpu_context {scalar_t__ active_oncpu; scalar_t__ exclusive; } ;


 int PERF_EV_CAP_SOFTWARE ;

__attribute__((used)) static int group_can_go_on(struct perf_event *event,
      struct perf_cpu_context *cpuctx,
      int can_add_hw)
{



 if (event->group_caps & PERF_EV_CAP_SOFTWARE)
  return 1;




 if (cpuctx->exclusive)
  return 0;




 if (event->attr.exclusive && cpuctx->active_oncpu)
  return 0;




 return can_add_hw;
}
