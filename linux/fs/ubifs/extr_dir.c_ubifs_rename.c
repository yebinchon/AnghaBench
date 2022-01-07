
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int EINVAL ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 unsigned int RENAME_WHITEOUT ;
 int do_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int fscrypt_prepare_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int inode_is_locked (struct inode*) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_xrename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

__attribute__((used)) static int ubifs_rename(struct inode *old_dir, struct dentry *old_dentry,
   struct inode *new_dir, struct dentry *new_dentry,
   unsigned int flags)
{
 int err;
 struct ubifs_info *c = old_dir->i_sb->s_fs_info;

 if (flags & ~(RENAME_NOREPLACE | RENAME_WHITEOUT | RENAME_EXCHANGE))
  return -EINVAL;

 ubifs_assert(c, inode_is_locked(old_dir));
 ubifs_assert(c, inode_is_locked(new_dir));

 err = fscrypt_prepare_rename(old_dir, old_dentry, new_dir, new_dentry,
         flags);
 if (err)
  return err;

 if (flags & RENAME_EXCHANGE)
  return ubifs_xrename(old_dir, old_dentry, new_dir, new_dentry);

 return do_rename(old_dir, old_dentry, new_dir, new_dentry, flags);
}
