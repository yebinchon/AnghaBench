
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;


 int ENOENT ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_1__* NILFS_I (int ) ;
 struct qstr QSTR_INIT (char*,int) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct inode* nilfs_iget (int ,struct nilfs_root*,unsigned long) ;
 unsigned long nilfs_inode_by_name (int ,struct qstr*) ;

__attribute__((used)) static struct dentry *nilfs_get_parent(struct dentry *child)
{
 unsigned long ino;
 struct inode *inode;
 struct qstr dotdot = QSTR_INIT("..", 2);
 struct nilfs_root *root;

 ino = nilfs_inode_by_name(d_inode(child), &dotdot);
 if (!ino)
  return ERR_PTR(-ENOENT);

 root = NILFS_I(d_inode(child))->i_root;

 inode = nilfs_iget(child->d_sb, root, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 return d_obtain_alias(inode);
}
