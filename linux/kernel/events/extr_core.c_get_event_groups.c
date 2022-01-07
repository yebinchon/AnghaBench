
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_groups {int dummy; } ;
struct perf_event_context {struct perf_event_groups flexible_groups; struct perf_event_groups pinned_groups; } ;
struct TYPE_2__ {scalar_t__ pinned; } ;
struct perf_event {TYPE_1__ attr; } ;



__attribute__((used)) static struct perf_event_groups *
get_event_groups(struct perf_event *event, struct perf_event_context *ctx)
{
 if (event->attr.pinned)
  return &ctx->pinned_groups;
 else
  return &ctx->flexible_groups;
}
