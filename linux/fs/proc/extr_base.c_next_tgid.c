
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgid_iter {int tgid; int * task; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;


 int PIDTYPE_PID ;
 struct pid* find_ge_pid (int,struct pid_namespace*) ;
 int get_task_struct (int *) ;
 int has_group_leader_pid (int *) ;
 int pid_nr_ns (struct pid*,struct pid_namespace*) ;
 int * pid_task (struct pid*,int ) ;
 int put_task_struct (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct tgid_iter next_tgid(struct pid_namespace *ns, struct tgid_iter iter)
{
 struct pid *pid;

 if (iter.task)
  put_task_struct(iter.task);
 rcu_read_lock();
retry:
 iter.task = ((void*)0);
 pid = find_ge_pid(iter.tgid, ns);
 if (pid) {
  iter.tgid = pid_nr_ns(pid, ns);
  iter.task = pid_task(pid, PIDTYPE_PID);
  if (!iter.task || !has_group_leader_pid(iter.task)) {
   iter.tgid += 1;
   goto retry;
  }
  get_task_struct(iter.task);
 }
 rcu_read_unlock();
 return iter;
}
