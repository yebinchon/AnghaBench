
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;


 int PF_KTHREAD ;
 struct file* get_mm_exe_file (struct mm_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

struct file *get_task_exe_file(struct task_struct *task)
{
 struct file *exe_file = ((void*)0);
 struct mm_struct *mm;

 task_lock(task);
 mm = task->mm;
 if (mm) {
  if (!(task->flags & PF_KTHREAD))
   exe_file = get_mm_exe_file(mm);
 }
 task_unlock(task);
 return exe_file;
}
