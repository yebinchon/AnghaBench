
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int dummy; } ;
struct work_struct {int entry; } ;
struct pool_workqueue {struct worker_pool* pool; } ;
struct list_head {int dummy; } ;


 scalar_t__ __need_more_worker (struct worker_pool*) ;
 int get_pwq (struct pool_workqueue*) ;
 int list_add_tail (int *,struct list_head*) ;
 int set_work_pwq (struct work_struct*,struct pool_workqueue*,unsigned int) ;
 int smp_mb () ;
 int wake_up_worker (struct worker_pool*) ;

__attribute__((used)) static void insert_work(struct pool_workqueue *pwq, struct work_struct *work,
   struct list_head *head, unsigned int extra_flags)
{
 struct worker_pool *pool = pwq->pool;


 set_work_pwq(work, pwq, extra_flags);
 list_add_tail(&work->entry, head);
 get_pwq(pwq);






 smp_mb();

 if (__need_more_worker(pool))
  wake_up_worker(pool);
}
