
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int proc_get_link; } ;
struct proc_inode {TYPE_1__ op; int fd; } ;
struct inode {int i_size; int * i_op; } ;
struct fd_data {int mode; int fd; } ;
struct dentry {int d_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFLNK ;
 int d_set_d_op (struct dentry*,int *) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int proc_fd_link ;
 int proc_pid_link_inode_operations ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*,int ) ;
 int tid_fd_dentry_operations ;
 int tid_fd_update_inode (struct task_struct*,struct inode*,int ) ;

__attribute__((used)) static struct dentry *proc_fd_instantiate(struct dentry *dentry,
 struct task_struct *task, const void *ptr)
{
 const struct fd_data *data = ptr;
 struct proc_inode *ei;
 struct inode *inode;

 inode = proc_pid_make_inode(dentry->d_sb, task, S_IFLNK);
 if (!inode)
  return ERR_PTR(-ENOENT);

 ei = PROC_I(inode);
 ei->fd = data->fd;

 inode->i_op = &proc_pid_link_inode_operations;
 inode->i_size = 64;

 ei->op.proc_get_link = proc_fd_link;
 tid_fd_update_inode(task, inode, data->mode);

 d_set_d_op(dentry, &tid_fd_dentry_operations);
 return d_splice_alias(inode, dentry);
}
