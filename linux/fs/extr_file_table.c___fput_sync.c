
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct file {int f_count; } ;


 int BUG_ON (int) ;
 int PF_KTHREAD ;
 int __fput (struct file*) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 struct task_struct* current ;

void __fput_sync(struct file *file)
{
 if (atomic_long_dec_and_test(&file->f_count)) {
  struct task_struct *task = current;
  BUG_ON(!(task->flags & PF_KTHREAD));
  __fput(file);
 }
}
