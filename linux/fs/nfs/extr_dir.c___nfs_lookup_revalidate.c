
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct inode inode ;
struct dentry {int d_parent; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 struct dentry* READ_ONCE (int ) ;
 struct inode* d_inode (struct dentry*) ;
 struct inode* d_inode_rcu (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static int
__nfs_lookup_revalidate(struct dentry *dentry, unsigned int flags,
   int (*reval)(struct inode *, struct dentry *, unsigned int))
{
 struct dentry *parent;
 struct inode *dir;
 int ret;

 if (flags & LOOKUP_RCU) {
  parent = READ_ONCE(dentry->d_parent);
  dir = d_inode_rcu(parent);
  if (!dir)
   return -ECHILD;
  ret = reval(dir, dentry, flags);
  if (parent != READ_ONCE(dentry->d_parent))
   return -ECHILD;
 } else {
  parent = dget_parent(dentry);
  ret = reval(d_inode(parent), dentry, flags);
  dput(parent);
 }
 return ret;
}
