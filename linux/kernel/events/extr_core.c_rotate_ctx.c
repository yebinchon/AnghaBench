
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int flexible_groups; scalar_t__ rotate_disable; } ;
struct perf_event {int dummy; } ;


 int perf_event_groups_delete (int *,struct perf_event*) ;
 int perf_event_groups_insert (int *,struct perf_event*) ;

__attribute__((used)) static void rotate_ctx(struct perf_event_context *ctx, struct perf_event *event)
{




 if (ctx->rotate_disable)
  return;

 perf_event_groups_delete(&ctx->flexible_groups, event);
 perf_event_groups_insert(&ctx->flexible_groups, event);
}
