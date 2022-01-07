
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct TYPE_2__ {int fu_llist; int fu_rcuhead; } ;
struct file {TYPE_1__ f_u; int f_count; } ;


 int PF_KTHREAD ;
 int ____fput ;
 scalar_t__ atomic_long_sub_and_test (unsigned int,int *) ;
 struct task_struct* current ;
 int delayed_fput_list ;
 int delayed_fput_work ;
 int in_interrupt () ;
 int init_task_work (int *,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ llist_add (int *,int *) ;
 int schedule_delayed_work (int *,int) ;
 int task_work_add (struct task_struct*,int *,int) ;

void fput_many(struct file *file, unsigned int refs)
{
 if (atomic_long_sub_and_test(refs, &file->f_count)) {
  struct task_struct *task = current;

  if (likely(!in_interrupt() && !(task->flags & PF_KTHREAD))) {
   init_task_work(&file->f_u.fu_rcuhead, ____fput);
   if (!task_work_add(task, &file->f_u.fu_rcuhead, 1))
    return;





  }

  if (llist_add(&file->f_u.fu_llist, &delayed_fput_list))
   schedule_delayed_work(&delayed_fput_work, 1);
 }
}
