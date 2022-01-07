
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_size; int i_sb; int i_mode; scalar_t__ i_nlink; int i_mtime; int i_ctime; int i_gid; int i_uid; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ i_disksize; int i_mmap_sem; int i_data_sem; int xattr_sem; } ;


 unsigned int const ATTR_GID ;
 unsigned int const ATTR_MODE ;
 int ATTR_SIZE ;
 unsigned int const ATTR_TIMES_SET ;
 unsigned int const ATTR_UID ;
 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
 int EXT4_HT_INODE ;
 int EXT4_HT_QUOTA ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAXQUOTAS_DEL_BLOCKS (int ) ;
 int EXT4_MAXQUOTAS_INIT_BLOCKS (int ) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_I_VERSION (struct inode*) ;
 int PTR_ERR (int *) ;
 int S_ISREG (int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int dquot_initialize (struct inode*) ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int ext4_begin_ordered_truncate (struct inode*,scalar_t__) ;
 int ext4_break_layouts (struct inode*) ;
 int ext4_forced_shutdown (struct ext4_sb_info*) ;
 scalar_t__ ext4_handle_valid (int *) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 int ext4_std_error (int ,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_truncate (struct inode*) ;
 int ext4_wait_for_tail_page_commit (struct inode*) ;
 int fscrypt_prepare_setattr (struct dentry*,struct iattr*) ;
 int fsverity_prepare_setattr (struct dentry*,struct iattr*) ;
 int gid_eq (int ,int ) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int inode_dio_wait (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;
 scalar_t__ is_quota_modification (struct inode*,struct iattr*) ;
 int mark_inode_dirty (struct inode*) ;
 int pagecache_isize_extended (struct inode*,scalar_t__,scalar_t__) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;
 int uid_eq (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int up_write (int *) ;

int ext4_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int error, rc = 0;
 int orphan = 0;
 const unsigned int ia_valid = attr->ia_valid;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 if (unlikely(IS_IMMUTABLE(inode)))
  return -EPERM;

 if (unlikely(IS_APPEND(inode) &&
       (ia_valid & (ATTR_MODE | ATTR_UID |
      ATTR_GID | ATTR_TIMES_SET))))
  return -EPERM;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;

 error = fscrypt_prepare_setattr(dentry, attr);
 if (error)
  return error;

 error = fsverity_prepare_setattr(dentry, attr);
 if (error)
  return error;

 if (is_quota_modification(inode, attr)) {
  error = dquot_initialize(inode);
  if (error)
   return error;
 }
 if ((ia_valid & ATTR_UID && !uid_eq(attr->ia_uid, inode->i_uid)) ||
     (ia_valid & ATTR_GID && !gid_eq(attr->ia_gid, inode->i_gid))) {
  handle_t *handle;



  handle = ext4_journal_start(inode, EXT4_HT_QUOTA,
   (EXT4_MAXQUOTAS_INIT_BLOCKS(inode->i_sb) +
    EXT4_MAXQUOTAS_DEL_BLOCKS(inode->i_sb)) + 3);
  if (IS_ERR(handle)) {
   error = PTR_ERR(handle);
   goto err_out;
  }




  down_read(&EXT4_I(inode)->xattr_sem);
  error = dquot_transfer(inode, attr);
  up_read(&EXT4_I(inode)->xattr_sem);

  if (error) {
   ext4_journal_stop(handle);
   return error;
  }


  if (attr->ia_valid & ATTR_UID)
   inode->i_uid = attr->ia_uid;
  if (attr->ia_valid & ATTR_GID)
   inode->i_gid = attr->ia_gid;
  error = ext4_mark_inode_dirty(handle, inode);
  ext4_journal_stop(handle);
 }

 if (attr->ia_valid & ATTR_SIZE) {
  handle_t *handle;
  loff_t oldsize = inode->i_size;
  int shrink = (attr->ia_size < inode->i_size);

  if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))) {
   struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);

   if (attr->ia_size > sbi->s_bitmap_maxbytes)
    return -EFBIG;
  }
  if (!S_ISREG(inode->i_mode))
   return -EINVAL;

  if (IS_I_VERSION(inode) && attr->ia_size != inode->i_size)
   inode_inc_iversion(inode);

  if (shrink) {
   if (ext4_should_order_data(inode)) {
    error = ext4_begin_ordered_truncate(inode,
           attr->ia_size);
    if (error)
     goto err_out;
   }




   inode_dio_wait(inode);
  }

  down_write(&EXT4_I(inode)->i_mmap_sem);

  rc = ext4_break_layouts(inode);
  if (rc) {
   up_write(&EXT4_I(inode)->i_mmap_sem);
   return rc;
  }

  if (attr->ia_size != inode->i_size) {
   handle = ext4_journal_start(inode, EXT4_HT_INODE, 3);
   if (IS_ERR(handle)) {
    error = PTR_ERR(handle);
    goto out_mmap_sem;
   }
   if (ext4_handle_valid(handle) && shrink) {
    error = ext4_orphan_add(handle, inode);
    orphan = 1;
   }




   if (!shrink) {
    inode->i_mtime = current_time(inode);
    inode->i_ctime = inode->i_mtime;
   }
   down_write(&EXT4_I(inode)->i_data_sem);
   EXT4_I(inode)->i_disksize = attr->ia_size;
   rc = ext4_mark_inode_dirty(handle, inode);
   if (!error)
    error = rc;





   if (!error)
    i_size_write(inode, attr->ia_size);
   up_write(&EXT4_I(inode)->i_data_sem);
   ext4_journal_stop(handle);
   if (error)
    goto out_mmap_sem;
   if (!shrink) {
    pagecache_isize_extended(inode, oldsize,
        inode->i_size);
   } else if (ext4_should_journal_data(inode)) {
    ext4_wait_for_tail_page_commit(inode);
   }
  }





  truncate_pagecache(inode, inode->i_size);




  if (attr->ia_size <= oldsize) {
   rc = ext4_truncate(inode);
   if (rc)
    error = rc;
  }
out_mmap_sem:
  up_write(&EXT4_I(inode)->i_mmap_sem);
 }

 if (!error) {
  setattr_copy(inode, attr);
  mark_inode_dirty(inode);
 }





 if (orphan && inode->i_nlink)
  ext4_orphan_del(((void*)0), inode);

 if (!error && (ia_valid & ATTR_MODE))
  rc = posix_acl_chmod(inode, inode->i_mode);

err_out:
 ext4_std_error(inode->i_sb, error);
 if (!error)
  error = rc;
 return error;
}
