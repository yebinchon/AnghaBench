
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int flags; int pwqs; } ;
struct workqueue_attrs {int dummy; } ;
struct apply_wqattrs_ctx {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int WQ_UNBOUND ;
 int __WQ_ORDERED ;
 int __WQ_ORDERED_EXPLICIT ;
 int apply_wqattrs_cleanup (struct apply_wqattrs_ctx*) ;
 int apply_wqattrs_commit (struct apply_wqattrs_ctx*) ;
 struct apply_wqattrs_ctx* apply_wqattrs_prepare (struct workqueue_struct*,struct workqueue_attrs const*) ;
 int list_empty (int *) ;

__attribute__((used)) static int apply_workqueue_attrs_locked(struct workqueue_struct *wq,
     const struct workqueue_attrs *attrs)
{
 struct apply_wqattrs_ctx *ctx;


 if (WARN_ON(!(wq->flags & WQ_UNBOUND)))
  return -EINVAL;


 if (!list_empty(&wq->pwqs)) {
  if (WARN_ON(wq->flags & __WQ_ORDERED_EXPLICIT))
   return -EINVAL;

  wq->flags &= ~__WQ_ORDERED;
 }

 ctx = apply_wqattrs_prepare(wq, attrs);
 if (!ctx)
  return -ENOMEM;


 apply_wqattrs_commit(ctx);
 apply_wqattrs_cleanup(ctx);

 return 0;
}
