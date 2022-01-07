
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int xattr_root; struct dentry* priv_root; } ;


 int ENODATA ;
 struct dentry* ERR_PTR (int) ;
 int I_MUTEX_XATTR ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 scalar_t__ xattr_may_create (int) ;
 int xattr_mkdir (int ,struct dentry*,int) ;

__attribute__((used)) static struct dentry *open_xa_root(struct super_block *sb, int flags)
{
 struct dentry *privroot = REISERFS_SB(sb)->priv_root;
 struct dentry *xaroot;

 if (d_really_is_negative(privroot))
  return ERR_PTR(-ENODATA);

 inode_lock_nested(d_inode(privroot), I_MUTEX_XATTR);

 xaroot = dget(REISERFS_SB(sb)->xattr_root);
 if (!xaroot)
  xaroot = ERR_PTR(-ENODATA);
 else if (d_really_is_negative(xaroot)) {
  int err = -ENODATA;

  if (xattr_may_create(flags))
   err = xattr_mkdir(d_inode(privroot), xaroot, 0700);
  if (err) {
   dput(xaroot);
   xaroot = ERR_PTR(err);
  }
 }

 inode_unlock(d_inode(privroot));
 return xaroot;
}
