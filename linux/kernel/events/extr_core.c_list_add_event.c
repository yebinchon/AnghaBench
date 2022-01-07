
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int generation; int nr_stat; int nr_events; int event_list; int lock; } ;
struct TYPE_2__ {scalar_t__ inherit_stat; } ;
struct perf_event {int attach_state; TYPE_1__ attr; int event_entry; int event_caps; int group_caps; struct perf_event* group_leader; int tstamp; } ;


 int PERF_ATTACH_CONTEXT ;
 int WARN_ON_ONCE (int) ;
 int add_event_to_groups (struct perf_event*,struct perf_event_context*) ;
 int list_add_rcu (int *,int *) ;
 int list_update_cgroup_event (struct perf_event*,struct perf_event_context*,int) ;
 int lockdep_assert_held (int *) ;
 int perf_event_time (struct perf_event*) ;

__attribute__((used)) static void
list_add_event(struct perf_event *event, struct perf_event_context *ctx)
{
 lockdep_assert_held(&ctx->lock);

 WARN_ON_ONCE(event->attach_state & PERF_ATTACH_CONTEXT);
 event->attach_state |= PERF_ATTACH_CONTEXT;

 event->tstamp = perf_event_time(event);






 if (event->group_leader == event) {
  event->group_caps = event->event_caps;
  add_event_to_groups(event, ctx);
 }

 list_update_cgroup_event(event, ctx, 1);

 list_add_rcu(&event->event_entry, &ctx->event_list);
 ctx->nr_events++;
 if (event->attr.inherit_stat)
  ctx->nr_stat++;

 ctx->generation++;
}
