
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; int comm; } ;
struct oom_control {size_t constraint; int memcg; int nodemask; } ;


 int cpuset_print_current_mems_allowed () ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int mem_cgroup_print_oom_context (int ,struct task_struct*) ;
 int nodemask_pr_args (int ) ;
 int * oom_constraint_text ;
 int pr_cont (char*,int ,int ,int ) ;
 int pr_info (char*,int ,int ) ;
 int task_uid (struct task_struct*) ;

__attribute__((used)) static void dump_oom_summary(struct oom_control *oc, struct task_struct *victim)
{

 pr_info("oom-kill:constraint=%s,nodemask=%*pbl",
   oom_constraint_text[oc->constraint],
   nodemask_pr_args(oc->nodemask));
 cpuset_print_current_mems_allowed();
 mem_cgroup_print_oom_context(oc->memcg, victim);
 pr_cont(",task=%s,pid=%d,uid=%d\n", victim->comm, victim->pid,
  from_kuid(&init_user_ns, task_uid(victim)));
}
