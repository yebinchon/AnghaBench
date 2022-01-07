
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ quiet; int fs_gid; int fs_uid; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_mode; int ia_mtime; int ia_ctime; int ia_atime; int ia_gid; int ia_uid; } ;
struct dentry {int d_sb; } ;
struct TYPE_4__ {int truncate_lock; } ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 int FAT_VALID_MODE ;
 TYPE_2__* MSDOS_I (struct inode*) ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int S_ATIME ;
 int S_CTIME ;
 int S_MTIME ;
 unsigned int TIMES_SET_FLAGS ;
 struct inode* d_inode (struct dentry*) ;
 int down_write (int *) ;
 scalar_t__ fat_allow_set_time (struct msdos_sb_info*,struct inode*) ;
 int fat_block_truncate_page (struct inode*,scalar_t__) ;
 int fat_cont_expand (struct inode*,scalar_t__) ;
 scalar_t__ fat_sanitize_mode (struct msdos_sb_info*,struct inode*,int*) ;
 int fat_truncate_blocks (struct inode*,scalar_t__) ;
 int fat_truncate_time (struct inode*,int *,int ) ;
 int gid_eq (int ,int ) ;
 int inode_dio_wait (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;
 int uid_eq (int ,int ) ;
 int up_write (int *) ;

int fat_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct msdos_sb_info *sbi = MSDOS_SB(dentry->d_sb);
 struct inode *inode = d_inode(dentry);
 unsigned int ia_valid;
 int error;


 ia_valid = attr->ia_valid;
 if (ia_valid & TIMES_SET_FLAGS) {
  if (fat_allow_set_time(sbi, inode))
   attr->ia_valid &= ~TIMES_SET_FLAGS;
 }

 error = setattr_prepare(dentry, attr);
 attr->ia_valid = ia_valid;
 if (error) {
  if (sbi->options.quiet)
   error = 0;
  goto out;
 }







 if (attr->ia_valid & ATTR_SIZE) {
  inode_dio_wait(inode);

  if (attr->ia_size > inode->i_size) {
   error = fat_cont_expand(inode, attr->ia_size);
   if (error || attr->ia_valid == ATTR_SIZE)
    goto out;
   attr->ia_valid &= ~ATTR_SIZE;
  }
 }

 if (((attr->ia_valid & ATTR_UID) &&
      (!uid_eq(attr->ia_uid, sbi->options.fs_uid))) ||
     ((attr->ia_valid & ATTR_GID) &&
      (!gid_eq(attr->ia_gid, sbi->options.fs_gid))) ||
     ((attr->ia_valid & ATTR_MODE) &&
      (attr->ia_mode & ~FAT_VALID_MODE)))
  error = -EPERM;

 if (error) {
  if (sbi->options.quiet)
   error = 0;
  goto out;
 }





 if (attr->ia_valid & ATTR_MODE) {
  if (fat_sanitize_mode(sbi, inode, &attr->ia_mode) < 0)
   attr->ia_valid &= ~ATTR_MODE;
 }

 if (attr->ia_valid & ATTR_SIZE) {
  error = fat_block_truncate_page(inode, attr->ia_size);
  if (error)
   goto out;
  down_write(&MSDOS_I(inode)->truncate_lock);
  truncate_setsize(inode, attr->ia_size);
  fat_truncate_blocks(inode, attr->ia_size);
  up_write(&MSDOS_I(inode)->truncate_lock);
 }





 if (attr->ia_valid & ATTR_ATIME)
  fat_truncate_time(inode, &attr->ia_atime, S_ATIME);
 if (attr->ia_valid & ATTR_CTIME)
  fat_truncate_time(inode, &attr->ia_ctime, S_CTIME);
 if (attr->ia_valid & ATTR_MTIME)
  fat_truncate_time(inode, &attr->ia_mtime, S_MTIME);
 attr->ia_valid &= ~(ATTR_ATIME|ATTR_CTIME|ATTR_MTIME);

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
out:
 return error;
}
