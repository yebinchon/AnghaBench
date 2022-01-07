
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_inode {int op; } ;
struct pid_entry {int op; scalar_t__ fop; scalar_t__ iop; int mode; } ;
struct inode {scalar_t__ i_fop; scalar_t__ i_op; int i_mode; } ;
struct dentry {int d_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct proc_inode* PROC_I (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int d_set_d_op (struct dentry*,int *) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int pid_dentry_operations ;
 int pid_update_inode (struct task_struct*,struct inode*) ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*,int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static struct dentry *proc_pident_instantiate(struct dentry *dentry,
 struct task_struct *task, const void *ptr)
{
 const struct pid_entry *p = ptr;
 struct inode *inode;
 struct proc_inode *ei;

 inode = proc_pid_make_inode(dentry->d_sb, task, p->mode);
 if (!inode)
  return ERR_PTR(-ENOENT);

 ei = PROC_I(inode);
 if (S_ISDIR(inode->i_mode))
  set_nlink(inode, 2);
 if (p->iop)
  inode->i_op = p->iop;
 if (p->fop)
  inode->i_fop = p->fop;
 ei->op = p->op;
 pid_update_inode(task, inode);
 d_set_d_op(dentry, &pid_dentry_operations);
 return d_splice_alias(inode, dentry);
}
