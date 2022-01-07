
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_generation; int i_sb; } ;
struct dentry {int dummy; } ;
typedef int namebuf ;
struct TYPE_2__ {int k_objectid; } ;


 int ENODATA ;
 struct dentry* ERR_PTR (int) ;
 TYPE_1__* INODE_PKEY (struct inode const*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_XATTR ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int le32_to_cpu (int ) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 struct dentry* open_xa_root (int ,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int strlen (char*) ;
 scalar_t__ xattr_may_create (int) ;
 int xattr_mkdir (int ,struct dentry*,int) ;

__attribute__((used)) static struct dentry *open_xa_dir(const struct inode *inode, int flags)
{
 struct dentry *xaroot, *xadir;
 char namebuf[17];

 xaroot = open_xa_root(inode->i_sb, flags);
 if (IS_ERR(xaroot))
  return xaroot;

 snprintf(namebuf, sizeof(namebuf), "%X.%X",
   le32_to_cpu(INODE_PKEY(inode)->k_objectid),
   inode->i_generation);

 inode_lock_nested(d_inode(xaroot), I_MUTEX_XATTR);

 xadir = lookup_one_len(namebuf, xaroot, strlen(namebuf));
 if (!IS_ERR(xadir) && d_really_is_negative(xadir)) {
  int err = -ENODATA;

  if (xattr_may_create(flags))
   err = xattr_mkdir(d_inode(xaroot), xadir, 0700);
  if (err) {
   dput(xadir);
   xadir = ERR_PTR(err);
  }
 }

 inode_unlock(d_inode(xaroot));
 dput(xaroot);
 return xadir;
}
