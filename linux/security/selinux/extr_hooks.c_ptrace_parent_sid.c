
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int current ;
 struct task_struct* ptrace_parent (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static u32 ptrace_parent_sid(void)
{
 u32 sid = 0;
 struct task_struct *tracer;

 rcu_read_lock();
 tracer = ptrace_parent(current);
 if (tracer)
  sid = task_sid(tracer);
 rcu_read_unlock();

 return sid;
}
