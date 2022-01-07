
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct cred {int dummy; } ;


 int ENOENT ;
 int OVL_INDEX ;
 scalar_t__ WARN_ON (int) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int ovl_copy_up (struct dentry*) ;
 int ovl_dentry_has_upper_alias (struct dentry*) ;
 int ovl_inode_lock (struct inode*) ;
 int ovl_inode_unlock (struct inode*) ;
 scalar_t__ ovl_need_index (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_set_nlink_upper (struct dentry*) ;
 int ovl_test_flag (int ,struct inode*) ;
 int revert_creds (struct cred const*) ;

int ovl_nlink_start(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 const struct cred *old_cred;
 int err;

 if (WARN_ON(!inode))
  return -ENOENT;
 if (ovl_need_index(dentry) && !ovl_dentry_has_upper_alias(dentry)) {
  err = ovl_copy_up(dentry);
  if (err)
   return err;
 }

 err = ovl_inode_lock(inode);
 if (err)
  return err;

 if (d_is_dir(dentry) || !ovl_test_flag(OVL_INDEX, inode))
  goto out;

 old_cred = ovl_override_creds(dentry->d_sb);






 err = ovl_set_nlink_upper(dentry);
 revert_creds(old_cred);

out:
 if (err)
  ovl_inode_unlock(inode);

 return err;
}
