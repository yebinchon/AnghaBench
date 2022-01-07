
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int flags; struct worker* rescuer; int name; } ;
struct worker {int task; struct workqueue_struct* rescue_wq; } ;


 int ENOMEM ;
 int NUMA_NO_NODE ;
 int PTR_ERR_OR_ZERO (int ) ;
 int WQ_MEM_RECLAIM ;
 struct worker* alloc_worker (int ) ;
 int cpu_possible_mask ;
 int kfree (struct worker*) ;
 int kthread_bind_mask (int ,int ) ;
 int kthread_create (int ,struct worker*,char*,int ) ;
 int rescuer_thread ;
 int wake_up_process (int ) ;

__attribute__((used)) static int init_rescuer(struct workqueue_struct *wq)
{
 struct worker *rescuer;
 int ret;

 if (!(wq->flags & WQ_MEM_RECLAIM))
  return 0;

 rescuer = alloc_worker(NUMA_NO_NODE);
 if (!rescuer)
  return -ENOMEM;

 rescuer->rescue_wq = wq;
 rescuer->task = kthread_create(rescuer_thread, rescuer, "%s", wq->name);
 ret = PTR_ERR_OR_ZERO(rescuer->task);
 if (ret) {
  kfree(rescuer);
  return ret;
 }

 wq->rescuer = rescuer;
 kthread_bind_mask(rescuer->task, cpu_possible_mask);
 wake_up_process(rescuer->task);

 return 0;
}
