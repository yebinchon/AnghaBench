
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuset_rwsem ;
 int get_online_cpus () ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 int rebuild_sched_domains_locked () ;

void rebuild_sched_domains(void)
{
 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);
 rebuild_sched_domains_locked();
 percpu_up_write(&cpuset_rwsem);
 put_online_cpus();
}
