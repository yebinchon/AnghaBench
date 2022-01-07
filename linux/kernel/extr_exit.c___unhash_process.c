
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int thread_node; int thread_group; int sibling; int tasks; } ;


 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 int PIDTYPE_SID ;
 int PIDTYPE_TGID ;
 int __this_cpu_dec (int ) ;
 int detach_pid (struct task_struct*,int ) ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int nr_threads ;
 int process_counts ;

__attribute__((used)) static void __unhash_process(struct task_struct *p, bool group_dead)
{
 nr_threads--;
 detach_pid(p, PIDTYPE_PID);
 if (group_dead) {
  detach_pid(p, PIDTYPE_TGID);
  detach_pid(p, PIDTYPE_PGID);
  detach_pid(p, PIDTYPE_SID);

  list_del_rcu(&p->tasks);
  list_del_init(&p->sibling);
  __this_cpu_dec(process_counts);
 }
 list_del_rcu(&p->thread_group);
 list_del_rcu(&p->thread_node);
}
