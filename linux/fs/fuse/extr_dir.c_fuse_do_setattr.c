
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; scalar_t__ i_size; int i_mapping; int i_ctime; int i_mtime; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_ctime; int ia_mtime; } ;
struct TYPE_3__ {int mode; scalar_t__ size; } ;
struct fuse_setattr_in {TYPE_1__ attr; int lock_owner; int valid; int fh; } ;
struct fuse_inode {int state; int lock; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int writeback_cache; scalar_t__ atomic_o_trunc; int default_permissions; } ;
struct fuse_attr_out {TYPE_1__ attr; int lock_owner; int valid; int fh; } ;
struct file {struct fuse_file* private_data; } ;
struct dentry {int dummy; } ;
typedef int outarg ;
typedef scalar_t__ loff_t ;
typedef int inarg ;
struct TYPE_4__ {int files; } ;


 int ATTR_CTIME ;
 int ATTR_FORCE ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_OPEN ;
 int ATTR_SIZE ;
 int ATTR_TIMES_SET ;
 int ATTR_UID ;
 int EINTR ;
 int EIO ;
 int FATTR_FH ;
 int FATTR_LOCKOWNER ;
 int FUSE_ARGS (int ) ;
 int FUSE_I_SIZE_UNSTABLE ;
 int S_IFMT ;
 scalar_t__ S_ISREG (int) ;
 scalar_t__ WARN_ON (int) ;
 int __fuse_release_nowrite (struct inode*) ;
 int args ;
 int attr_timeout (struct fuse_setattr_in*) ;
 int clear_bit (int ,int *) ;
 TYPE_2__* current ;
 struct inode* d_inode (struct dentry*) ;
 int fuse_change_attributes_common (struct inode*,TYPE_1__*,int ) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_lock_owner_id (struct fuse_conn*,int ) ;
 int fuse_release_nowrite (struct inode*) ;
 int fuse_set_nowrite (struct inode*) ;
 int fuse_setattr_fill (struct fuse_conn*,int *,struct inode*,struct fuse_setattr_in*,struct fuse_setattr_in*) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int iattr_to_fattr (struct fuse_conn*,struct iattr*,struct fuse_setattr_in*,int) ;
 int invalidate_inode_pages2 (int ) ;
 int make_bad_inode (struct inode*) ;
 int memset (struct fuse_setattr_in*,int ,int) ;
 int set_bit (int ,int *) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;
 int write_inode_now (struct inode*,int) ;

int fuse_do_setattr(struct dentry *dentry, struct iattr *attr,
      struct file *file)
{
 struct inode *inode = d_inode(dentry);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);
 FUSE_ARGS(args);
 struct fuse_setattr_in inarg;
 struct fuse_attr_out outarg;
 bool is_truncate = 0;
 bool is_wb = fc->writeback_cache;
 loff_t oldsize;
 int err;
 bool trust_local_cmtime = is_wb && S_ISREG(inode->i_mode);

 if (!fc->default_permissions)
  attr->ia_valid |= ATTR_FORCE;

 err = setattr_prepare(dentry, attr);
 if (err)
  return err;

 if (attr->ia_valid & ATTR_OPEN) {

  WARN_ON(!(attr->ia_valid & ATTR_SIZE));
  WARN_ON(attr->ia_size != 0);
  if (fc->atomic_o_trunc) {





   i_size_write(inode, 0);
   truncate_pagecache(inode, 0);
   return 0;
  }
  file = ((void*)0);
 }

 if (attr->ia_valid & ATTR_SIZE) {
  if (WARN_ON(!S_ISREG(inode->i_mode)))
   return -EIO;
  is_truncate = 1;
 }


 if (is_wb && S_ISREG(inode->i_mode) &&
     attr->ia_valid &
   (ATTR_MODE | ATTR_UID | ATTR_GID | ATTR_MTIME_SET |
    ATTR_TIMES_SET)) {
  err = write_inode_now(inode, 1);
  if (err)
   return err;

  fuse_set_nowrite(inode);
  fuse_release_nowrite(inode);
 }

 if (is_truncate) {
  fuse_set_nowrite(inode);
  set_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);
  if (trust_local_cmtime && attr->ia_size != inode->i_size)
   attr->ia_valid |= ATTR_MTIME | ATTR_CTIME;
 }

 memset(&inarg, 0, sizeof(inarg));
 memset(&outarg, 0, sizeof(outarg));
 iattr_to_fattr(fc, attr, &inarg, trust_local_cmtime);
 if (file) {
  struct fuse_file *ff = file->private_data;
  inarg.valid |= FATTR_FH;
  inarg.fh = ff->fh;
 }
 if (attr->ia_valid & ATTR_SIZE) {

  inarg.valid |= FATTR_LOCKOWNER;
  inarg.lock_owner = fuse_lock_owner_id(fc, current->files);
 }
 fuse_setattr_fill(fc, &args, inode, &inarg, &outarg);
 err = fuse_simple_request(fc, &args);
 if (err) {
  if (err == -EINTR)
   fuse_invalidate_attr(inode);
  goto error;
 }

 if ((inode->i_mode ^ outarg.attr.mode) & S_IFMT) {
  make_bad_inode(inode);
  err = -EIO;
  goto error;
 }

 spin_lock(&fi->lock);

 if (trust_local_cmtime) {
  if (attr->ia_valid & ATTR_MTIME)
   inode->i_mtime = attr->ia_mtime;
  if (attr->ia_valid & ATTR_CTIME)
   inode->i_ctime = attr->ia_ctime;

 }

 fuse_change_attributes_common(inode, &outarg.attr,
          attr_timeout(&outarg));
 oldsize = inode->i_size;

 if (!is_wb || is_truncate || !S_ISREG(inode->i_mode))
  i_size_write(inode, outarg.attr.size);

 if (is_truncate) {

  __fuse_release_nowrite(inode);
 }
 spin_unlock(&fi->lock);





 if ((is_truncate || !is_wb) &&
     S_ISREG(inode->i_mode) && oldsize != outarg.attr.size) {
  truncate_pagecache(inode, outarg.attr.size);
  invalidate_inode_pages2(inode->i_mapping);
 }

 clear_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);
 return 0;

error:
 if (is_truncate)
  fuse_release_nowrite(inode);

 clear_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);
 return err;
}
