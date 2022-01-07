
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_rename_in {int dummy; } ;
struct fuse_rename2_in {int dummy; } ;
struct fuse_conn {int no_rename2; int minor; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int ENOSYS ;
 int FUSE_RENAME ;
 int FUSE_RENAME2 ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 int fuse_rename_common (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int,int ,int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_rename2(struct inode *olddir, struct dentry *oldent,
   struct inode *newdir, struct dentry *newent,
   unsigned int flags)
{
 struct fuse_conn *fc = get_fuse_conn(olddir);
 int err;

 if (flags & ~(RENAME_NOREPLACE | RENAME_EXCHANGE))
  return -EINVAL;

 if (flags) {
  if (fc->no_rename2 || fc->minor < 23)
   return -EINVAL;

  err = fuse_rename_common(olddir, oldent, newdir, newent, flags,
      FUSE_RENAME2,
      sizeof(struct fuse_rename2_in));
  if (err == -ENOSYS) {
   fc->no_rename2 = 1;
   err = -EINVAL;
  }
 } else {
  err = fuse_rename_common(olddir, oldent, newdir, newent, 0,
      FUSE_RENAME,
      sizeof(struct fuse_rename_in));
 }

 return err;
}
