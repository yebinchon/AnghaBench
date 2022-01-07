
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int boost_mutex ;
 struct task_struct** boost_tasks ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_torture_boost ;
 int rcu_torture_enable_rt_throttle () ;
 int torture_stop_kthread (int ,struct task_struct*) ;

__attribute__((used)) static int rcutorture_booster_cleanup(unsigned int cpu)
{
 struct task_struct *t;

 if (boost_tasks[cpu] == ((void*)0))
  return 0;
 mutex_lock(&boost_mutex);
 t = boost_tasks[cpu];
 boost_tasks[cpu] = ((void*)0);
 rcu_torture_enable_rt_throttle();
 mutex_unlock(&boost_mutex);


 torture_stop_kthread(rcu_torture_boost, t);
 return 0;
}
