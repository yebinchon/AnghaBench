
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int real_parent; } ;


 TYPE_1__* current ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_tgid_vnr (int ) ;

__attribute__((used)) static inline pid_t tomoyo_sys_getppid(void)
{
 pid_t pid;

 rcu_read_lock();
 pid = task_tgid_vnr(rcu_dereference(current->real_parent));
 rcu_read_unlock();
 return pid;
}
