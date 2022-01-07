
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_ctime; int i_mtime; int i_gid; int i_uid; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int i_acl_mode; int i_sem; void* last_disk_size; int * i_gc_rwsem; int i_mmap_sem; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EIO ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int FI_ACL_MODE ;
 scalar_t__ MAX_INLINE_DATA (struct inode*) ;
 int SBI_QUOTA_NEED_REPAIR ;
 size_t WRITE ;
 int __setattr_copy (struct inode*,struct iattr*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_write (int *) ;
 int dquot_initialize (struct inode*) ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int f2fs_balance_fs (int ,int) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 int f2fs_cp_error (int ) ;
 int f2fs_get_inode_mode (struct inode*) ;
 int f2fs_lock_op (int ) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_truncate (struct inode*) ;
 int f2fs_unlock_op (int ) ;
 int fscrypt_prepare_setattr (struct dentry*,struct iattr*) ;
 int fsverity_prepare_setattr (struct dentry*,struct iattr*) ;
 int gid_eq (int ,int ) ;
 void* i_size_read (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 scalar_t__ is_quota_modification (struct inode*,struct iattr*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int set_sbi_flag (int ,int ) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;
 int uid_eq (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;

int f2fs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int err;

 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
  return -EIO;

 err = setattr_prepare(dentry, attr);
 if (err)
  return err;

 err = fscrypt_prepare_setattr(dentry, attr);
 if (err)
  return err;

 err = fsverity_prepare_setattr(dentry, attr);
 if (err)
  return err;

 if (is_quota_modification(inode, attr)) {
  err = dquot_initialize(inode);
  if (err)
   return err;
 }
 if ((attr->ia_valid & ATTR_UID &&
  !uid_eq(attr->ia_uid, inode->i_uid)) ||
  (attr->ia_valid & ATTR_GID &&
  !gid_eq(attr->ia_gid, inode->i_gid))) {
  f2fs_lock_op(F2FS_I_SB(inode));
  err = dquot_transfer(inode, attr);
  if (err) {
   set_sbi_flag(F2FS_I_SB(inode),
     SBI_QUOTA_NEED_REPAIR);
   f2fs_unlock_op(F2FS_I_SB(inode));
   return err;
  }




  if (attr->ia_valid & ATTR_UID)
   inode->i_uid = attr->ia_uid;
  if (attr->ia_valid & ATTR_GID)
   inode->i_gid = attr->ia_gid;
  f2fs_mark_inode_dirty_sync(inode, 1);
  f2fs_unlock_op(F2FS_I_SB(inode));
 }

 if (attr->ia_valid & ATTR_SIZE) {
  loff_t old_size = i_size_read(inode);

  if (attr->ia_size > MAX_INLINE_DATA(inode)) {




   err = f2fs_convert_inline_inode(inode);
   if (err)
    return err;
  }

  down_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
  down_write(&F2FS_I(inode)->i_mmap_sem);

  truncate_setsize(inode, attr->ia_size);

  if (attr->ia_size <= old_size)
   err = f2fs_truncate(inode);




  up_write(&F2FS_I(inode)->i_mmap_sem);
  up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
  if (err)
   return err;

  down_write(&F2FS_I(inode)->i_sem);
  inode->i_mtime = inode->i_ctime = current_time(inode);
  F2FS_I(inode)->last_disk_size = i_size_read(inode);
  up_write(&F2FS_I(inode)->i_sem);
 }

 __setattr_copy(inode, attr);

 if (attr->ia_valid & ATTR_MODE) {
  err = posix_acl_chmod(inode, f2fs_get_inode_mode(inode));
  if (err || is_inode_flag_set(inode, FI_ACL_MODE)) {
   inode->i_mode = F2FS_I(inode)->i_acl_mode;
   clear_inode_flag(inode, FI_ACL_MODE);
  }
 }


 f2fs_mark_inode_dirty_sync(inode, 1);


 f2fs_balance_fs(F2FS_I_SB(inode), 1);

 return err;
}
