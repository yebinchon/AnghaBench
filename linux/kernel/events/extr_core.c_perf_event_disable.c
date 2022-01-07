
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct perf_event {int dummy; } ;


 int _perf_event_disable (struct perf_event*) ;
 struct perf_event_context* perf_event_ctx_lock (struct perf_event*) ;
 int perf_event_ctx_unlock (struct perf_event*,struct perf_event_context*) ;

void perf_event_disable(struct perf_event *event)
{
 struct perf_event_context *ctx;

 ctx = perf_event_ctx_lock(event);
 _perf_event_disable(event);
 perf_event_ctx_unlock(event, ctx);
}
