
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int boost_mutex ;
 int ** boost_tasks ;
 int cpu_to_node (unsigned int) ;
 int kthread_bind (int *,unsigned int) ;
 int * kthread_create_on_node (int ,int *,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_rcu_torture_boost_ktrerror ;
 int rcu_torture_boost ;
 int rcu_torture_disable_rt_throttle () ;
 int wake_up_process (int *) ;

__attribute__((used)) static int rcutorture_booster_init(unsigned int cpu)
{
 int retval;

 if (boost_tasks[cpu] != ((void*)0))
  return 0;


 mutex_lock(&boost_mutex);
 rcu_torture_disable_rt_throttle();
 VERBOSE_TOROUT_STRING("Creating rcu_torture_boost task");
 boost_tasks[cpu] = kthread_create_on_node(rcu_torture_boost, ((void*)0),
        cpu_to_node(cpu),
        "rcu_torture_boost");
 if (IS_ERR(boost_tasks[cpu])) {
  retval = PTR_ERR(boost_tasks[cpu]);
  VERBOSE_TOROUT_STRING("rcu_torture_boost task create failed");
  n_rcu_torture_boost_ktrerror++;
  boost_tasks[cpu] = ((void*)0);
  mutex_unlock(&boost_mutex);
  return retval;
 }
 kthread_bind(boost_tasks[cpu], cpu);
 wake_up_process(boost_tasks[cpu]);
 mutex_unlock(&boost_mutex);
 return 0;
}
