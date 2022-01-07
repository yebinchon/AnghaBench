
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int group_leader; } ;


 int EINVAL ;
 int ENOSYS ;

 unsigned long PR_SET_PTRACER_ANY ;
 struct task_struct* current ;
 struct task_struct* find_get_task_by_vpid (unsigned long) ;
 int get_task_struct (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 struct task_struct* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int thread_group_leader (struct task_struct*) ;
 int yama_ptracer_add (struct task_struct*,struct task_struct*) ;
 int yama_ptracer_del (int *,struct task_struct*) ;

__attribute__((used)) static int yama_task_prctl(int option, unsigned long arg2, unsigned long arg3,
      unsigned long arg4, unsigned long arg5)
{
 int rc = -ENOSYS;
 struct task_struct *myself = current;

 switch (option) {
 case 128:






  rcu_read_lock();
  if (!thread_group_leader(myself))
   myself = rcu_dereference(myself->group_leader);
  get_task_struct(myself);
  rcu_read_unlock();

  if (arg2 == 0) {
   yama_ptracer_del(((void*)0), myself);
   rc = 0;
  } else if (arg2 == PR_SET_PTRACER_ANY || (int)arg2 == -1) {
   rc = yama_ptracer_add(((void*)0), myself);
  } else {
   struct task_struct *tracer;

   tracer = find_get_task_by_vpid(arg2);
   if (!tracer) {
    rc = -EINVAL;
   } else {
    rc = yama_ptracer_add(tracer, myself);
    put_task_struct(tracer);
   }
  }

  put_task_struct(myself);
  break;
 }

 return rc;
}
