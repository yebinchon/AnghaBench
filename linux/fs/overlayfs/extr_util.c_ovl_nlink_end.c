
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; } ;
struct dentry {int d_sb; } ;
struct cred {int dummy; } ;


 int OVL_INDEX ;
 struct inode* d_inode (struct dentry*) ;
 int ovl_cleanup_index (struct dentry*) ;
 int ovl_inode_unlock (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 scalar_t__ ovl_test_flag (int ,struct inode*) ;
 int revert_creds (struct cred const*) ;

void ovl_nlink_end(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 if (ovl_test_flag(OVL_INDEX, inode) && inode->i_nlink == 0) {
  const struct cred *old_cred;

  old_cred = ovl_override_creds(dentry->d_sb);
  ovl_cleanup_index(dentry);
  revert_creds(old_cred);
 }

 ovl_inode_unlock(inode);
}
