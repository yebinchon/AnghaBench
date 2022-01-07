
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disabled; } ;
struct perf_event {TYPE_1__ attr; int state; } ;


 int PERF_EVENT_STATE_INACTIVE ;
 int PERF_EVENT_STATE_OFF ;

__attribute__((used)) static inline void perf_event__state_init(struct perf_event *event)
{
 event->state = event->attr.disabled ? PERF_EVENT_STATE_OFF :
           PERF_EVENT_STATE_INACTIVE;
}
