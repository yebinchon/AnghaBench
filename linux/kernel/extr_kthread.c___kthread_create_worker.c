
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct task_struct {int dummy; } ;
struct kthread_worker {unsigned int flags; struct task_struct* task; } ;


 int ENOMEM ;
 struct kthread_worker* ERR_CAST (struct task_struct*) ;
 struct kthread_worker* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int NUMA_NO_NODE ;
 struct task_struct* __kthread_create_on_node (int ,struct kthread_worker*,int,char const*,int ) ;
 int cpu_to_node (int) ;
 int kfree (struct kthread_worker*) ;
 int kthread_bind (struct task_struct*,int) ;
 int kthread_init_worker (struct kthread_worker*) ;
 int kthread_worker_fn ;
 struct kthread_worker* kzalloc (int,int ) ;
 int wake_up_process (struct task_struct*) ;

struct kthread_worker *
__kthread_create_worker(int cpu, unsigned int flags,
   const char namefmt[], va_list args)
{
 struct kthread_worker *worker;
 struct task_struct *task;
 int node = NUMA_NO_NODE;

 worker = kzalloc(sizeof(*worker), GFP_KERNEL);
 if (!worker)
  return ERR_PTR(-ENOMEM);

 kthread_init_worker(worker);

 if (cpu >= 0)
  node = cpu_to_node(cpu);

 task = __kthread_create_on_node(kthread_worker_fn, worker,
      node, namefmt, args);
 if (IS_ERR(task))
  goto fail_task;

 if (cpu >= 0)
  kthread_bind(task, cpu);

 worker->flags = flags;
 worker->task = task;
 wake_up_process(task);
 return worker;

fail_task:
 kfree(worker);
 return ERR_CAST(task);
}
