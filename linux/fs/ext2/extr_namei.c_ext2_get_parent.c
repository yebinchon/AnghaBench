
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int d_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct qstr QSTR_INIT (char*,int) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int ext2_iget (int ,unsigned long) ;
 unsigned long ext2_inode_by_name (int ,struct qstr*) ;

struct dentry *ext2_get_parent(struct dentry *child)
{
 struct qstr dotdot = QSTR_INIT("..", 2);
 unsigned long ino = ext2_inode_by_name(d_inode(child), &dotdot);
 if (!ino)
  return ERR_PTR(-ENOENT);
 return d_obtain_alias(ext2_iget(child->d_sb, ino));
}
