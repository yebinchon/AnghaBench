
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {int dummy; } ;
struct trace_array {int filtered_pids; } ;
struct seq_file {struct trace_array* private; } ;
typedef int loff_t ;


 struct trace_pid_list* rcu_dereference_sched (int ) ;
 void* trace_pid_next (struct trace_pid_list*,void*,int *) ;

__attribute__((used)) static void *
p_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct trace_array *tr = m->private;
 struct trace_pid_list *pid_list = rcu_dereference_sched(tr->filtered_pids);

 return trace_pid_next(pid_list, v, pos);
}
