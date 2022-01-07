
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;


 struct mm_struct* ERR_PTR (int ) ;
 int ESRCH ;
 int IS_ERR_OR_NULL (struct mm_struct*) ;
 unsigned int PTRACE_MODE_FSCREDS ;
 struct task_struct* get_proc_task (struct inode*) ;
 struct mm_struct* mm_access (struct task_struct*,unsigned int) ;
 int mmgrab (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int put_task_struct (struct task_struct*) ;

struct mm_struct *proc_mem_open(struct inode *inode, unsigned int mode)
{
 struct task_struct *task = get_proc_task(inode);
 struct mm_struct *mm = ERR_PTR(-ESRCH);

 if (task) {
  mm = mm_access(task, mode | PTRACE_MODE_FSCREDS);
  put_task_struct(task);

  if (!IS_ERR_OR_NULL(mm)) {

   mmgrab(mm);

   mmput(mm);
  }
 }

 return mm;
}
