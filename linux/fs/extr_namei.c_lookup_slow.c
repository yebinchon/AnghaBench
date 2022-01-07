
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct dentry* __lookup_slow (struct qstr const*,struct dentry*,unsigned int) ;
 int inode_lock_shared (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;

__attribute__((used)) static struct dentry *lookup_slow(const struct qstr *name,
      struct dentry *dir,
      unsigned int flags)
{
 struct inode *inode = dir->d_inode;
 struct dentry *res;
 inode_lock_shared(inode);
 res = __lookup_slow(name, dir, flags);
 inode_unlock_shared(inode);
 return res;
}
