
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int mutex; int refcount; } ;
struct perf_event {struct perf_event_context* ctx; } ;


 struct perf_event_context* READ_ONCE (struct perf_event_context*) ;
 int mutex_lock_double (int *,int *) ;
 int mutex_unlock (int *) ;
 int put_ctx (struct perf_event_context*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct perf_event_context *
__perf_event_ctx_lock_double(struct perf_event *group_leader,
        struct perf_event_context *ctx)
{
 struct perf_event_context *gctx;

again:
 rcu_read_lock();
 gctx = READ_ONCE(group_leader->ctx);
 if (!refcount_inc_not_zero(&gctx->refcount)) {
  rcu_read_unlock();
  goto again;
 }
 rcu_read_unlock();

 mutex_lock_double(&gctx->mutex, &ctx->mutex);

 if (group_leader->ctx != gctx) {
  mutex_unlock(&ctx->mutex);
  mutex_unlock(&gctx->mutex);
  put_ctx(gctx);
  goto again;
 }

 return gctx;
}
