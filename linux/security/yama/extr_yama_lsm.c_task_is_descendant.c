
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ pid; int real_parent; int group_leader; } ;


 struct task_struct* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int thread_group_leader (struct task_struct*) ;

__attribute__((used)) static int task_is_descendant(struct task_struct *parent,
         struct task_struct *child)
{
 int rc = 0;
 struct task_struct *walker = child;

 if (!parent || !child)
  return 0;

 rcu_read_lock();
 if (!thread_group_leader(parent))
  parent = rcu_dereference(parent->group_leader);
 while (walker->pid > 0) {
  if (!thread_group_leader(walker))
   walker = rcu_dereference(walker->group_leader);
  if (walker == parent) {
   rc = 1;
   break;
  }
  walker = rcu_dereference(walker->real_parent);
 }
 rcu_read_unlock();

 return rc;
}
