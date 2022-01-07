
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
typedef int pid_t ;


 int find_vpid (int ) ;
 struct pid* get_pid (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct pid *find_get_pid(pid_t nr)
{
 struct pid *pid;

 rcu_read_lock();
 pid = get_pid(find_vpid(nr));
 rcu_read_unlock();

 return pid;
}
