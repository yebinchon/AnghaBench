
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct proc_inode {int pid; } ;
struct inode {int i_gid; int i_uid; int * i_op; int i_ctime; int i_atime; int i_mtime; int i_ino; int i_mode; } ;


 int PIDTYPE_PID ;
 struct proc_inode* PROC_I (struct inode*) ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 int get_task_pid (struct task_struct*,int ) ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int proc_def_inode_operations ;
 int security_task_to_inode (struct task_struct*,struct inode*) ;
 int task_dump_owner (struct task_struct*,int ,int *,int *) ;

struct inode *proc_pid_make_inode(struct super_block * sb,
      struct task_struct *task, umode_t mode)
{
 struct inode * inode;
 struct proc_inode *ei;



 inode = new_inode(sb);
 if (!inode)
  goto out;


 ei = PROC_I(inode);
 inode->i_mode = mode;
 inode->i_ino = get_next_ino();
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_op = &proc_def_inode_operations;




 ei->pid = get_task_pid(task, PIDTYPE_PID);
 if (!ei->pid)
  goto out_unlock;

 task_dump_owner(task, 0, &inode->i_uid, &inode->i_gid);
 security_task_to_inode(task, inode);

out:
 return inode;

out_unlock:
 iput(inode);
 return ((void*)0);
}
