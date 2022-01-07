
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int dummy; } ;
struct worker {int task; } ;


 struct worker* first_idle_worker (struct worker_pool*) ;
 scalar_t__ likely (struct worker*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void wake_up_worker(struct worker_pool *pool)
{
 struct worker *worker = first_idle_worker(pool);

 if (likely(worker))
  wake_up_process(worker->task);
}
