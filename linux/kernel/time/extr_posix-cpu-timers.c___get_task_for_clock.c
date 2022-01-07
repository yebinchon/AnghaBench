
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_MAX ;
 int CPUCLOCK_PERTHREAD (int const) ;
 int CPUCLOCK_PID (int const) ;
 scalar_t__ CPUCLOCK_WHICH (int const) ;
 int get_task_struct (struct task_struct*) ;
 struct task_struct* lookup_task (int const,int const,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct task_struct *__get_task_for_clock(const clockid_t clock,
      bool getref, bool gettime)
{
 const bool thread = !!CPUCLOCK_PERTHREAD(clock);
 const pid_t pid = CPUCLOCK_PID(clock);
 struct task_struct *p;

 if (CPUCLOCK_WHICH(clock) >= CPUCLOCK_MAX)
  return ((void*)0);

 rcu_read_lock();
 p = lookup_task(pid, thread, gettime);
 if (p && getref)
  get_task_struct(p);
 rcu_read_unlock();
 return p;
}
