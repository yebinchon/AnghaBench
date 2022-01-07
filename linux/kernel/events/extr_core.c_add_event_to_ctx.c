
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct perf_event {int dummy; } ;


 int list_add_event (struct perf_event*,struct perf_event_context*) ;
 int perf_group_attach (struct perf_event*) ;

__attribute__((used)) static void add_event_to_ctx(struct perf_event *event,
          struct perf_event_context *ctx)
{
 list_add_event(event, ctx);
 perf_group_attach(event);
}
