
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int generation; int nr_stat; int nr_events; int lock; } ;
struct TYPE_2__ {scalar_t__ inherit_stat; } ;
struct perf_event {int attach_state; scalar_t__ state; struct perf_event* group_leader; int event_entry; TYPE_1__ attr; struct perf_event_context* ctx; } ;


 int PERF_ATTACH_CONTEXT ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 int WARN_ON_ONCE (int) ;
 int del_event_from_groups (struct perf_event*,struct perf_event_context*) ;
 int list_del_rcu (int *) ;
 int list_update_cgroup_event (struct perf_event*,struct perf_event_context*,int) ;
 int lockdep_assert_held (int *) ;
 int perf_event_set_state (struct perf_event*,scalar_t__) ;

__attribute__((used)) static void
list_del_event(struct perf_event *event, struct perf_event_context *ctx)
{
 WARN_ON_ONCE(event->ctx != ctx);
 lockdep_assert_held(&ctx->lock);




 if (!(event->attach_state & PERF_ATTACH_CONTEXT))
  return;

 event->attach_state &= ~PERF_ATTACH_CONTEXT;

 list_update_cgroup_event(event, ctx, 0);

 ctx->nr_events--;
 if (event->attr.inherit_stat)
  ctx->nr_stat--;

 list_del_rcu(&event->event_entry);

 if (event->group_leader == event)
  del_event_from_groups(event, ctx);
 if (event->state > PERF_EVENT_STATE_OFF)
  perf_event_set_state(event, PERF_EVENT_STATE_OFF);

 ctx->generation++;
}
