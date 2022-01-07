
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_writecount; } ;
struct iattr {int ia_valid; } ;
struct dentry {int d_inode; int d_sb; } ;
struct cred {int dummy; } ;


 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ETXTBSY ;
 scalar_t__ atomic_read (int *) ;
 struct inode* d_inode (struct dentry*) ;
 int get_write_access (struct inode*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int ovl_copy_up (struct dentry*) ;
 int ovl_copy_up_with_data (struct dentry*) ;
 int ovl_copyattr (int ,int ) ;
 struct dentry* ovl_dentry_real (struct dentry*) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_drop_write (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_want_write (struct dentry*) ;
 int put_write_access (struct inode*) ;
 int revert_creds (struct cred const*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

int ovl_setattr(struct dentry *dentry, struct iattr *attr)
{
 int err;
 bool full_copy_up = 0;
 struct dentry *upperdentry;
 const struct cred *old_cred;

 err = setattr_prepare(dentry, attr);
 if (err)
  return err;

 err = ovl_want_write(dentry);
 if (err)
  goto out;

 if (attr->ia_valid & ATTR_SIZE) {
  struct inode *realinode = d_inode(ovl_dentry_real(dentry));

  err = -ETXTBSY;
  if (atomic_read(&realinode->i_writecount) < 0)
   goto out_drop_write;


  full_copy_up = 1;
 }

 if (!full_copy_up)
  err = ovl_copy_up(dentry);
 else
  err = ovl_copy_up_with_data(dentry);
 if (!err) {
  struct inode *winode = ((void*)0);

  upperdentry = ovl_dentry_upper(dentry);

  if (attr->ia_valid & ATTR_SIZE) {
   winode = d_inode(upperdentry);
   err = get_write_access(winode);
   if (err)
    goto out_drop_write;
  }

  if (attr->ia_valid & (ATTR_KILL_SUID|ATTR_KILL_SGID))
   attr->ia_valid &= ~ATTR_MODE;

  inode_lock(upperdentry->d_inode);
  old_cred = ovl_override_creds(dentry->d_sb);
  err = notify_change(upperdentry, attr, ((void*)0));
  revert_creds(old_cred);
  if (!err)
   ovl_copyattr(upperdentry->d_inode, dentry->d_inode);
  inode_unlock(upperdentry->d_inode);

  if (winode)
   put_write_access(winode);
 }
out_drop_write:
 ovl_drop_write(dentry);
out:
 return err;
}
