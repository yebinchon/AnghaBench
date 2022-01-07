
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct aa_label {int dummy; } ;


 int PTRACE_MODE_ATTACH ;
 struct aa_label* aa_get_task_label (struct task_struct*) ;
 int aa_may_ptrace (struct aa_label*,struct aa_label*,int ) ;
 int aa_put_label (struct aa_label*) ;
 int current ;
 struct task_struct* ptrace_parent (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unconfined (struct aa_label*) ;

__attribute__((used)) static int may_change_ptraced_domain(struct aa_label *to_label,
         const char **info)
{
 struct task_struct *tracer;
 struct aa_label *tracerl = ((void*)0);
 int error = 0;

 rcu_read_lock();
 tracer = ptrace_parent(current);
 if (tracer)

  tracerl = aa_get_task_label(tracer);


 if (!tracer || unconfined(tracerl))
  goto out;

 error = aa_may_ptrace(tracerl, to_label, PTRACE_MODE_ATTACH);

out:
 rcu_read_unlock();
 aa_put_label(tracerl);

 if (error)
  *info = "ptrace prevents transition";
 return error;
}
