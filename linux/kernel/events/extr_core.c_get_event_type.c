
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int task; int lock; } ;
struct TYPE_2__ {scalar_t__ pinned; } ;
struct perf_event {TYPE_1__ attr; struct perf_event* group_leader; struct perf_event_context* ctx; } ;
typedef enum event_type_t { ____Placeholder_event_type_t } event_type_t ;


 int EVENT_CPU ;
 int EVENT_FLEXIBLE ;
 int EVENT_PINNED ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static enum event_type_t get_event_type(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;
 enum event_type_t event_type;

 lockdep_assert_held(&ctx->lock);





 if (event->group_leader != event)
  event = event->group_leader;

 event_type = event->attr.pinned ? EVENT_PINNED : EVENT_FLEXIBLE;
 if (!ctx->task)
  event_type |= EVENT_CPU;

 return event_type;
}
