
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct dentry {int d_sb; } ;


 int ENOENT ;
 struct dentry* ERR_CAST (struct page*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 struct qstr QSTR_INIT (char*,int) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int f2fs_iget (int ,unsigned long) ;
 unsigned long f2fs_inode_by_name (int ,struct qstr*,struct page**) ;

struct dentry *f2fs_get_parent(struct dentry *child)
{
 struct qstr dotdot = QSTR_INIT("..", 2);
 struct page *page;
 unsigned long ino = f2fs_inode_by_name(d_inode(child), &dotdot, &page);
 if (!ino) {
  if (IS_ERR(page))
   return ERR_CAST(page);
  return ERR_PTR(-ENOENT);
 }
 return d_obtain_alias(f2fs_iget(child->d_sb, ino));
}
