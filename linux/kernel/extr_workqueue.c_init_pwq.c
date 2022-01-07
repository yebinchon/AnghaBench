
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct worker_pool {int dummy; } ;
struct pool_workqueue {int flush_color; int refcnt; int unbound_release_work; int mayday_node; int pwqs_node; int delayed_works; struct workqueue_struct* wq; struct worker_pool* pool; } ;


 int BUG_ON (unsigned long) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 unsigned long WORK_STRUCT_FLAG_MASK ;
 int memset (struct pool_workqueue*,int ,int) ;
 int pwq_unbound_release_workfn ;

__attribute__((used)) static void init_pwq(struct pool_workqueue *pwq, struct workqueue_struct *wq,
       struct worker_pool *pool)
{
 BUG_ON((unsigned long)pwq & WORK_STRUCT_FLAG_MASK);

 memset(pwq, 0, sizeof(*pwq));

 pwq->pool = pool;
 pwq->wq = wq;
 pwq->flush_color = -1;
 pwq->refcnt = 1;
 INIT_LIST_HEAD(&pwq->delayed_works);
 INIT_LIST_HEAD(&pwq->pwqs_node);
 INIT_LIST_HEAD(&pwq->mayday_node);
 INIT_WORK(&pwq->unbound_release_work, pwq_unbound_release_workfn);
}
