
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ generation; scalar_t__ parent_gen; struct perf_event_context* parent_ctx; scalar_t__ pin_count; int lock; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static int context_equiv(struct perf_event_context *ctx1,
    struct perf_event_context *ctx2)
{
 lockdep_assert_held(&ctx1->lock);
 lockdep_assert_held(&ctx2->lock);


 if (ctx1->pin_count || ctx2->pin_count)
  return 0;


 if (ctx1 == ctx2->parent_ctx && ctx1->generation == ctx2->parent_gen)
  return 1;


 if (ctx1->parent_ctx == ctx2 && ctx1->parent_gen == ctx2->generation)
  return 1;





 if (ctx1->parent_ctx && ctx1->parent_ctx == ctx2->parent_ctx &&
   ctx1->parent_gen == ctx2->parent_gen)
  return 1;


 return 0;
}
