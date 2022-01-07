
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;


 int ESRCH ;
 int MAY_EXEC ;
 int current ;
 int generic_permission (struct inode*,int) ;
 struct task_struct* get_proc_task (struct inode*) ;
 scalar_t__ likely (int) ;
 int put_task_struct (struct task_struct*) ;
 int same_thread_group (int ,struct task_struct*) ;

__attribute__((used)) static int proc_tid_comm_permission(struct inode *inode, int mask)
{
 bool is_same_tgroup;
 struct task_struct *task;

 task = get_proc_task(inode);
 if (!task)
  return -ESRCH;
 is_same_tgroup = same_thread_group(current, task);
 put_task_struct(task);

 if (likely(is_same_tgroup && !(mask & MAY_EXEC))) {




  return 0;
 }

 return generic_permission(inode, mask);
}
