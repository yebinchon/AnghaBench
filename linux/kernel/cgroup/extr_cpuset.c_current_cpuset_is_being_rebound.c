
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpuset_being_rebound ;
 int current ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ task_cs (int ) ;

bool current_cpuset_is_being_rebound(void)
{
 bool ret;

 rcu_read_lock();
 ret = task_cs(current) == cpuset_being_rebound;
 rcu_read_unlock();

 return ret;
}
