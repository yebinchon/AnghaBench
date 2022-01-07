
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int fmode_t ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 struct inode* d_inode (struct dentry*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 unsigned int proc_fd (struct inode*) ;
 int put_task_struct (struct task_struct*) ;
 scalar_t__ tid_fd_mode (struct task_struct*,unsigned int,int *) ;
 int tid_fd_update_inode (struct task_struct*,struct inode*,int ) ;

__attribute__((used)) static int tid_fd_revalidate(struct dentry *dentry, unsigned int flags)
{
 struct task_struct *task;
 struct inode *inode;
 unsigned int fd;

 if (flags & LOOKUP_RCU)
  return -ECHILD;

 inode = d_inode(dentry);
 task = get_proc_task(inode);
 fd = proc_fd(inode);

 if (task) {
  fmode_t f_mode;
  if (tid_fd_mode(task, fd, &f_mode)) {
   tid_fd_update_inode(task, inode, f_mode);
   put_task_struct(task);
   return 1;
  }
  put_task_struct(task);
 }
 return 0;
}
