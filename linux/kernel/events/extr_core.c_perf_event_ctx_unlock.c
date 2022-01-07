
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int mutex; } ;
struct perf_event {int dummy; } ;


 int mutex_unlock (int *) ;
 int put_ctx (struct perf_event_context*) ;

__attribute__((used)) static void perf_event_ctx_unlock(struct perf_event *event,
      struct perf_event_context *ctx)
{
 mutex_unlock(&ctx->mutex);
 put_ctx(ctx);
}
