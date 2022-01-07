
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;


 int PTRACE_MODE_READ_FSCREDS ;
 struct task_struct* get_proc_task (struct inode*) ;
 int ptrace_may_access (struct task_struct*,int ) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_fd_access_allowed(struct inode *inode)
{
 struct task_struct *task;
 int allowed = 0;




 task = get_proc_task(inode);
 if (task) {
  allowed = ptrace_may_access(task, PTRACE_MODE_READ_FSCREDS);
  put_task_struct(task);
 }
 return allowed;
}
