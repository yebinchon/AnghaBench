
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int d_sb; } ;
typedef int ino_t ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct qstr QSTR_INIT (char*,int) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int ufs_iget (int ,int ) ;
 int ufs_inode_by_name (int ,struct qstr*) ;

__attribute__((used)) static struct dentry *ufs_get_parent(struct dentry *child)
{
 struct qstr dot_dot = QSTR_INIT("..", 2);
 ino_t ino;

 ino = ufs_inode_by_name(d_inode(child), &dot_dot);
 if (!ino)
  return ERR_PTR(-ENOENT);
 return d_obtain_alias(ufs_iget(child->d_sb, ino));
}
