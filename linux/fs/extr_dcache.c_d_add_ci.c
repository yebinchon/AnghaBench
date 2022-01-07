
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_parent; int d_wait; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* d_alloc (int ,struct qstr*) ;
 struct dentry* d_alloc_parallel (int ,struct qstr*,int ) ;
 struct dentry* d_hash_and_lookup (int ,struct qstr*) ;
 scalar_t__ d_in_lookup (struct dentry*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int dput (struct dentry*) ;
 int iput (struct inode*) ;

struct dentry *d_add_ci(struct dentry *dentry, struct inode *inode,
   struct qstr *name)
{
 struct dentry *found, *res;





 found = d_hash_and_lookup(dentry->d_parent, name);
 if (found) {
  iput(inode);
  return found;
 }
 if (d_in_lookup(dentry)) {
  found = d_alloc_parallel(dentry->d_parent, name,
     dentry->d_wait);
  if (IS_ERR(found) || !d_in_lookup(found)) {
   iput(inode);
   return found;
  }
 } else {
  found = d_alloc(dentry->d_parent, name);
  if (!found) {
   iput(inode);
   return ERR_PTR(-ENOMEM);
  }
 }
 res = d_splice_alias(inode, found);
 if (res) {
  dput(found);
  return res;
 }
 return found;
}
