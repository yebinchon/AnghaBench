
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct task_struct {int dummy; } ;
struct sched_param {int sched_priority; } ;
struct kthread_create_info {int (* threadfn ) (void*) ;int node; struct task_struct* result; int * done; int list; void* data; } ;
typedef int name ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EINTR ;
 int ENOMEM ;
 struct task_struct* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct task_struct*) ;
 int SCHED_NORMAL ;
 int TASK_COMM_LEN ;
 int cpu_all_mask ;
 int done ;
 int kfree (struct kthread_create_info*) ;
 struct kthread_create_info* kmalloc (int,int ) ;
 int kthread_create_list ;
 int kthread_create_lock ;
 int kthreadd_task ;
 int list_add_tail (int *,int *) ;
 int sched_setscheduler_nocheck (struct task_struct*,int ,struct sched_param const*) ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;
 int set_task_comm (struct task_struct*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int vsnprintf (char*,int,char const*,int ) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_killable (int *) ;
 int wake_up_process (int ) ;
 scalar_t__ xchg (int **,int *) ;

struct task_struct *__kthread_create_on_node(int (*threadfn)(void *data),
          void *data, int node,
          const char namefmt[],
          va_list args)
{
 DECLARE_COMPLETION_ONSTACK(done);
 struct task_struct *task;
 struct kthread_create_info *create = kmalloc(sizeof(*create),
           GFP_KERNEL);

 if (!create)
  return ERR_PTR(-ENOMEM);
 create->threadfn = threadfn;
 create->data = data;
 create->node = node;
 create->done = &done;

 spin_lock(&kthread_create_lock);
 list_add_tail(&create->list, &kthread_create_list);
 spin_unlock(&kthread_create_lock);

 wake_up_process(kthreadd_task);





 if (unlikely(wait_for_completion_killable(&done))) {





  if (xchg(&create->done, ((void*)0)))
   return ERR_PTR(-EINTR);




  wait_for_completion(&done);
 }
 task = create->result;
 if (!IS_ERR(task)) {
  static const struct sched_param param = { .sched_priority = 0 };
  char name[TASK_COMM_LEN];





  vsnprintf(name, sizeof(name), namefmt, args);
  set_task_comm(task, name);




  sched_setscheduler_nocheck(task, SCHED_NORMAL, &param);
  set_cpus_allowed_ptr(task, cpu_all_mask);
 }
 kfree(create);
 return task;
}
