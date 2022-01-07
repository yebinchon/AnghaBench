
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int refcount; int flexible_active; int pinned_active; int event_list; int flexible_groups; int pinned_groups; int active_ctx_list; int mutex; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int perf_event_groups_init (int *) ;
 int raw_spin_lock_init (int *) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void __perf_event_init_context(struct perf_event_context *ctx)
{
 raw_spin_lock_init(&ctx->lock);
 mutex_init(&ctx->mutex);
 INIT_LIST_HEAD(&ctx->active_ctx_list);
 perf_event_groups_init(&ctx->pinned_groups);
 perf_event_groups_init(&ctx->flexible_groups);
 INIT_LIST_HEAD(&ctx->event_list);
 INIT_LIST_HEAD(&ctx->pinned_active);
 INIT_LIST_HEAD(&ctx->flexible_active);
 refcount_set(&ctx->refcount, 1);
}
