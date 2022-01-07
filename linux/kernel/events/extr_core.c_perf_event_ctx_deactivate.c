
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int active_ctx_list; } ;


 int WARN_ON (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_irqs_disabled () ;

__attribute__((used)) static void perf_event_ctx_deactivate(struct perf_event_context *ctx)
{
 lockdep_assert_irqs_disabled();

 WARN_ON(list_empty(&ctx->active_ctx_list));

 list_del_init(&ctx->active_ctx_list);
}
