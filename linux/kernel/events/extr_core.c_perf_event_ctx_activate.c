
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int active_ctx_list; } ;
struct list_head {int dummy; } ;


 int WARN_ON (int) ;
 int active_ctx_list ;
 int list_add (int *,struct list_head*) ;
 int list_empty (int *) ;
 int lockdep_assert_irqs_disabled () ;
 struct list_head* this_cpu_ptr (int *) ;

__attribute__((used)) static void perf_event_ctx_activate(struct perf_event_context *ctx)
{
 struct list_head *head = this_cpu_ptr(&active_ctx_list);

 lockdep_assert_irqs_disabled();

 WARN_ON(!list_empty(&ctx->active_ctx_list));

 list_add(&ctx->active_ctx_list, head);
}
