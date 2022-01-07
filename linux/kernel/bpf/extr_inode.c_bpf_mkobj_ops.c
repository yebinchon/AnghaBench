
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode_operations {int dummy; } ;
struct inode {void* i_private; struct file_operations const* i_fop; struct inode_operations const* i_op; int i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int bpf_dentry_finalize (struct dentry*,struct inode*,struct inode*) ;
 struct inode* bpf_get_inode (int ,struct inode*,int ) ;

__attribute__((used)) static int bpf_mkobj_ops(struct dentry *dentry, umode_t mode, void *raw,
    const struct inode_operations *iops,
    const struct file_operations *fops)
{
 struct inode *dir = dentry->d_parent->d_inode;
 struct inode *inode = bpf_get_inode(dir->i_sb, dir, mode);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 inode->i_op = iops;
 inode->i_fop = fops;
 inode->i_private = raw;

 bpf_dentry_finalize(dentry, inode, dir);
 return 0;
}
