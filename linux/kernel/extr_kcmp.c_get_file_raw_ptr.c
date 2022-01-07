
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ files; } ;
struct file {int dummy; } ;


 struct file* fcheck_files (scalar_t__,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static struct file *
get_file_raw_ptr(struct task_struct *task, unsigned int idx)
{
 struct file *file = ((void*)0);

 task_lock(task);
 rcu_read_lock();

 if (task->files)
  file = fcheck_files(task->files, idx);

 rcu_read_unlock();
 task_unlock(task);

 return file;
}
