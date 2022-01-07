
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int comm; TYPE_1__* signal; TYPE_2__* mm; int tgid; int pid; } ;
struct oom_control {int dummy; } ;
struct TYPE_6__ {int total_vm; } ;
struct TYPE_5__ {int oom_score_adj; } ;


 int MM_SWAPENTS ;
 struct task_struct* find_lock_task_mm (struct task_struct*) ;
 int from_kuid (int *,int ) ;
 int get_mm_counter (TYPE_2__*,int ) ;
 int get_mm_rss (TYPE_2__*) ;
 int init_user_ns ;
 int is_memcg_oom (struct oom_control*) ;
 int mm_pgtables_bytes (TYPE_2__*) ;
 int oom_cpuset_eligible (struct task_struct*,struct oom_control*) ;
 scalar_t__ oom_unkillable_task (struct task_struct*) ;
 int pr_info (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int task_uid (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int dump_task(struct task_struct *p, void *arg)
{
 struct oom_control *oc = arg;
 struct task_struct *task;

 if (oom_unkillable_task(p))
  return 0;


 if (!is_memcg_oom(oc) && !oom_cpuset_eligible(p, oc))
  return 0;

 task = find_lock_task_mm(p);
 if (!task) {





  return 0;
 }

 pr_info("[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\n",
  task->pid, from_kuid(&init_user_ns, task_uid(task)),
  task->tgid, task->mm->total_vm, get_mm_rss(task->mm),
  mm_pgtables_bytes(task->mm),
  get_mm_counter(task->mm, MM_SWAPENTS),
  task->signal->oom_score_adj, task->comm);
 task_unlock(task);

 return 0;
}
