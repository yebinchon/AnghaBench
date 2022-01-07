
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int cond_resched () ;
 int get_task_struct (struct task_struct*) ;
 scalar_t__ pid_alive (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool rcu_lock_break(struct task_struct *g, struct task_struct *t)
{
 bool can_cont;

 get_task_struct(g);
 get_task_struct(t);
 rcu_read_unlock();
 cond_resched();
 rcu_read_lock();
 can_cont = pid_alive(g) && pid_alive(t);
 put_task_struct(t);
 put_task_struct(g);

 return can_cont;
}
