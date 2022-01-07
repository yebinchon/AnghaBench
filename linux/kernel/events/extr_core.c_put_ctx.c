
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ task; int rcu_head; struct perf_event_context* parent_ctx; int refcount; } ;


 scalar_t__ TASK_TOMBSTONE ;
 int call_rcu (int *,int ) ;
 int free_ctx ;
 int put_task_struct (scalar_t__) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void put_ctx(struct perf_event_context *ctx)
{
 if (refcount_dec_and_test(&ctx->refcount)) {
  if (ctx->parent_ctx)
   put_ctx(ctx->parent_ctx);
  if (ctx->task && ctx->task != TASK_TOMBSTONE)
   put_task_struct(ctx->task);
  call_rcu(&ctx->rcu_head, free_ctx);
 }
}
