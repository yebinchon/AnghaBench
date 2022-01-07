
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int pid; int comm; int alloc_lock; } ;
struct access_report_info {char const* access; int work; struct task_struct* agent; struct task_struct* target; } ;
struct TYPE_3__ {int flags; } ;


 int GFP_ATOMIC ;
 int PF_KTHREAD ;
 int WARN (int,char*) ;
 int __report_access ;
 int assert_spin_locked (int *) ;
 TYPE_1__* current ;
 int get_task_comm (char*,struct task_struct*) ;
 int get_task_struct (struct task_struct*) ;
 int init_task_work (int *,int ) ;
 int kfree (struct access_report_info*) ;
 struct access_report_info* kmalloc (int,int ) ;
 int pr_notice_ratelimited (char*,char const*,int ,int ,int ,int ) ;
 int put_task_struct (struct task_struct*) ;
 scalar_t__ task_work_add (TYPE_1__*,int *,int) ;

__attribute__((used)) static void report_access(const char *access, struct task_struct *target,
    struct task_struct *agent)
{
 struct access_report_info *info;
 char agent_comm[sizeof(agent->comm)];

 assert_spin_locked(&target->alloc_lock);

 if (current->flags & PF_KTHREAD) {



  pr_notice_ratelimited(
      "ptrace %s of \"%s\"[%d] was attempted by \"%s\"[%d]\n",
      access, target->comm, target->pid,
      get_task_comm(agent_comm, agent), agent->pid);
  return;
 }

 info = kmalloc(sizeof(*info), GFP_ATOMIC);
 if (!info)
  return;
 init_task_work(&info->work, __report_access);
 get_task_struct(target);
 get_task_struct(agent);
 info->access = access;
 info->target = target;
 info->agent = agent;
 if (task_work_add(current, &info->work, 1) == 0)
  return;

 WARN(1, "report_access called from exiting task");
 put_task_struct(target);
 put_task_struct(agent);
 kfree(info);
}
