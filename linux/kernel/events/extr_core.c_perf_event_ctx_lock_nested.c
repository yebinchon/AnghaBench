
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int mutex; int refcount; } ;
struct perf_event {struct perf_event_context* ctx; } ;


 struct perf_event_context* READ_ONCE (struct perf_event_context*) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 int put_ctx (struct perf_event_context*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct perf_event_context *
perf_event_ctx_lock_nested(struct perf_event *event, int nesting)
{
 struct perf_event_context *ctx;

again:
 rcu_read_lock();
 ctx = READ_ONCE(event->ctx);
 if (!refcount_inc_not_zero(&ctx->refcount)) {
  rcu_read_unlock();
  goto again;
 }
 rcu_read_unlock();

 mutex_lock_nested(&ctx->mutex, nesting);
 if (event->ctx != ctx) {
  mutex_unlock(&ctx->mutex);
  put_ctx(ctx);
  goto again;
 }

 return ctx;
}
