
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int EXT4_SB (int ) ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 unsigned int RENAME_WHITEOUT ;
 int ext4_cross_rename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int fscrypt_prepare_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_rename2(struct inode *old_dir, struct dentry *old_dentry,
   struct inode *new_dir, struct dentry *new_dentry,
   unsigned int flags)
{
 int err;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(old_dir->i_sb))))
  return -EIO;

 if (flags & ~(RENAME_NOREPLACE | RENAME_EXCHANGE | RENAME_WHITEOUT))
  return -EINVAL;

 err = fscrypt_prepare_rename(old_dir, old_dentry, new_dir, new_dentry,
         flags);
 if (err)
  return err;

 if (flags & RENAME_EXCHANGE) {
  return ext4_cross_rename(old_dir, old_dentry,
      new_dir, new_dentry);
 }

 return ext4_rename(old_dir, old_dentry, new_dir, new_dentry, flags);
}
