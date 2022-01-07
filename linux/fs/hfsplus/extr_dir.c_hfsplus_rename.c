
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_fsdata; int d_name; } ;


 int EINVAL ;
 unsigned int RENAME_NOREPLACE ;
 scalar_t__ d_is_dir (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int hfsplus_rename_cat (int ,struct inode*,int *,struct inode*,int *) ;
 int hfsplus_rmdir (struct inode*,struct dentry*) ;
 int hfsplus_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int hfsplus_rename(struct inode *old_dir, struct dentry *old_dentry,
     struct inode *new_dir, struct dentry *new_dentry,
     unsigned int flags)
{
 int res;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;


 if (d_really_is_positive(new_dentry)) {
  if (d_is_dir(new_dentry))
   res = hfsplus_rmdir(new_dir, new_dentry);
  else
   res = hfsplus_unlink(new_dir, new_dentry);
  if (res)
   return res;
 }

 res = hfsplus_rename_cat((u32)(unsigned long)old_dentry->d_fsdata,
     old_dir, &old_dentry->d_name,
     new_dir, &new_dentry->d_name);
 if (!res)
  new_dentry->d_fsdata = old_dentry->d_fsdata;
 return res;
}
