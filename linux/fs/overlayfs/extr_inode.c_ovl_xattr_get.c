
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct cred {int dummy; } ;
typedef int ssize_t ;


 struct dentry* ovl_dentry_lower (struct dentry*) ;
 scalar_t__ ovl_i_dentry_upper (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;
 int vfs_getxattr (struct dentry*,char const*,void*,size_t) ;

int ovl_xattr_get(struct dentry *dentry, struct inode *inode, const char *name,
    void *value, size_t size)
{
 ssize_t res;
 const struct cred *old_cred;
 struct dentry *realdentry =
  ovl_i_dentry_upper(inode) ?: ovl_dentry_lower(dentry);

 old_cred = ovl_override_creds(dentry->d_sb);
 res = vfs_getxattr(realdentry, name, value, size);
 revert_creds(old_cred);
 return res;
}
