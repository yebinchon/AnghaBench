
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int i_flags; int * i_fop; int * i_op; } ;
struct dentry {int d_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int S_IFDIR ;
 int S_IMMUTABLE ;
 int S_IRUGO ;
 int S_IXUGO ;
 int d_set_d_op (struct dentry*,int *) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int nlink_tgid ;
 int pid_dentry_operations ;
 int pid_update_inode (struct task_struct*,struct inode*) ;
 struct inode* proc_pid_make_inode (int ,struct task_struct*,int) ;
 int proc_tgid_base_inode_operations ;
 int proc_tgid_base_operations ;
 int set_nlink (struct inode*,int ) ;

__attribute__((used)) static struct dentry *proc_pid_instantiate(struct dentry * dentry,
       struct task_struct *task, const void *ptr)
{
 struct inode *inode;

 inode = proc_pid_make_inode(dentry->d_sb, task, S_IFDIR | S_IRUGO | S_IXUGO);
 if (!inode)
  return ERR_PTR(-ENOENT);

 inode->i_op = &proc_tgid_base_inode_operations;
 inode->i_fop = &proc_tgid_base_operations;
 inode->i_flags|=S_IMMUTABLE;

 set_nlink(inode, nlink_tgid);
 pid_update_inode(task, inode);

 d_set_d_op(dentry, &pid_dentry_operations);
 return d_splice_alias(inode, dentry);
}
